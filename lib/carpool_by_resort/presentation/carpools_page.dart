import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:powder_pool/app_bars/presentation/auth_app_bar.dart';
import 'package:powder_pool/carpool_by_resort/application/carpools_by_resort_provider.dart';
import 'package:powder_pool/loading/presentation/loading_welcome.dart';
import 'package:powder_pool/models/carpool_model.dart';
import 'package:powder_pool/models/domain/resort_model.dart';
import 'package:powder_pool/models/domain/uuid.dart';
import 'package:powder_pool/resorts/application/resorts_provider.dart';
import 'package:powder_pool/router/domain/routes.dart';
import 'package:visibility_detector/visibility_detector.dart';

class CarpoolsByResortPage extends ConsumerWidget {
  final Resort? resort;
  final Uuid? resortId;
  const CarpoolsByResortPage({super.key, required this.resort, this.resortId});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (resort == null) {
      var resort = ref.watch(resortByIdProvider(resortId!));
      return resort.when(
        data: (resort) {
          return ResortLoaded(resort: resort);
        },
        error: (error, stackTrace) {
          return Center(child: Text('Error: $error'));
        },
        loading: () => LoadingWelcome(),
      );
    } else {
      return ResortLoaded(resort: resort!);
    }
  }
}

class ResortLoaded extends ConsumerWidget {
  const ResortLoaded({super.key, required this.resort});
  final Resort resort;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var carpoolPosts = ref.watch(carpoolsByResortId(resort.id!));
    return carpoolPosts.when(
      data: (carpoolPosts) {
        return CarpoolsByResortLoaded(
          resort: resort,
          carpoolPosts: carpoolPosts,
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text('Error: $error'));
      },
      loading: () => LoadingWelcome(),
    );
  }
}

class CarpoolsByResortLoaded extends StatefulWidget {
  const CarpoolsByResortLoaded({
    super.key,
    required this.carpoolPosts,
    required this.resort,
  });
  final Resort resort;
  final List<Carpool> carpoolPosts;

  @override
  State<CarpoolsByResortLoaded> createState() => _CarpoolsByResortLoadedState();
}

class _CarpoolsByResortLoadedState extends State<CarpoolsByResortLoaded> {
  @override
  void initState() {
    super.initState();
    // Sort the carpool posts by departure date and time
    widget.carpoolPosts.sort((a, b) {
      if (a.departureDate != null && b.departureDate != null) {
        return a.departureDate!.compareTo(b.departureDate!);
      } else if (a.departureDate == null && b.departureDate == null) {
        return 0;
      } else if (a.departureDate == null) {
        return 1;
      } else {
        return -1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(
      context,
    ).textTheme.apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AuthAppBar(),
      body: Container(
        height: double.infinity,
        // color: const Color(0xFFF5F5F5),
        // ✅ Center the inner container
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width * .90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 100),
                    Text(
                      'EXPLORE',
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Color(0xFF116e74),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Text(
                        'WHEN AND HOW YOU WANT IT – ${widget.resort.name}',
                        style: textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 72,
                          color: Color.fromRGBO(58, 58, 58, 1),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.resort.imageUrl!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                width: width * .90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 75),
                    Text(
                      'EXPLORE YOUR OPTIONS',
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Color(0xFF116e74),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      child: Text(
                        'Explore the options available to you and find the perfect carpool for your next adventure.',
                        style: textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 52,
                          letterSpacing: textTheme.bodySmall?.letterSpacing,
                          color: Color.fromRGBO(58, 58, 58, 1),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      child: Text(
                        'Join the carpool and chat with members to coordinate your trip. You can choose to drive and guide the party or be a passenger and enjoy the ride',
                        style: textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                          letterSpacing: textTheme.headlineLarge?.letterSpacing,
                          color: Color.fromRGBO(58, 58, 58, 1),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    ListView.builder(
                      physics:
                          NeverScrollableScrollPhysics(), // since inside SingleChildScrollView
                      shrinkWrap: true,
                      itemCount: widget.carpoolPosts.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 32),
                              child: CarpoolCard(
                                carpool: widget.carpoolPosts[index],
                              ),
                            ),
                            if (index < widget.carpoolPosts.length - 1)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16.0,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: 1,
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(height: 200, color: Color(0xff116e74)),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedDepartmentCard extends StatefulWidget {
  final Carpool carpool;
  const AnimatedDepartmentCard({required this.carpool, super.key});

  @override
  State<AnimatedDepartmentCard> createState() => _AnimatedDepartmentCardState();
}

class _AnimatedDepartmentCardState extends State<AnimatedDepartmentCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;
  bool _visible = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 0.1), // Slide up from slightly below
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.carpool.name ?? UniqueKey().toString()),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0 && !_visible) {
          setState(() => _visible = true);
          _controller.forward();
        }
      },
      child: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 300),
        child: SlideTransition(
          position: _offsetAnimation,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: CarpoolCard(carpool: widget.carpool),
          ),
        ),
      ),
    );
  }
}

class CarpoolCard extends StatelessWidget {
  const CarpoolCard({required this.carpool, super.key});

  final Carpool carpool;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: Icon(Icons.landscape_outlined, color: Color(0xFF116e74)),
            ),
            const SizedBox(width: 12),
            Text(
              carpool.name ?? '',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xFF116e74),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          carpool.description ?? '',
          style: TextStyle(fontSize: 16, color: Colors.grey[800]),
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildInfoColumn(
                'Organized by',
                '${carpool.creator?.firstName ?? ''} ${carpool.creator?.lastName ?? ''}',
              ),
            ),
            Expanded(
              child: _buildInfoColumn(
                'DEPARTURE DATE',
                carpool.departureDate != null
                    ? DateFormat('MMM dd, yyyy').format(carpool.departureDate!)
                    : '',
              ),
            ),
            Expanded(
              child: _buildInfoColumn(
                'DEPARTURE TIME',
                '${carpool.departureTime}',
              ),
            ),
            Expanded(
              child: JoinNowButtonRow(
                carpoolId: carpool.id!.toString(),
                resortId: carpool.resortId.toString(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoColumn(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(color: Color(0xFF116e74), fontSize: 14)),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class JoinNowButtonRow extends StatelessWidget {
  final String carpoolId;
  final String resortId;

  const JoinNowButtonRow({
    super.key,
    required this.carpoolId,
    required this.resortId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Text(
            'Join Now',
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
          SizedBox(width: 10),
          SizedBox(
            width: 48,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: const Color(0xFF116e74),
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                context.goNamed(
                  Routes.carpoolConversation.name,
                  pathParameters: {'carpoolId': carpoolId.toString()},
                );
              },
              child: const Icon(
                Icons.arrow_right_alt_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
