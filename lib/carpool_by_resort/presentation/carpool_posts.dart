import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:powder_pool/app_bars/presentation/auth_app_bar.dart';
import 'package:powder_pool/carpool_by_resort/application/carpools_by_resort_provider.dart';
import 'package:powder_pool/loading/presentation/loading_welcome.dart';
import 'package:powder_pool/models/carpool_model.dart';
import 'package:powder_pool/models/domain/uuid.dart';
import 'package:powder_pool/router/domain/routes.dart';

class CarpoolsByResortPage extends ConsumerWidget {
  final Uuid resortId;
  const CarpoolsByResortPage({super.key, required this.resortId});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var carpoolPosts = ref.watch(carpoolsByResortId(resortId));
    return carpoolPosts.when(
      data: (carpoolPosts) {
        return CarpoolsByResortLoaded(carpoolPosts: carpoolPosts);
      },
      error: (error, stackTrace) {
        return Center(child: Text('Error: $error'));
      },
      loading: () => LoadingWelcome(),
    );
  }
}

class CarpoolsByResortLoaded extends ConsumerStatefulWidget {
  final List<Carpool> carpoolPosts;
  const CarpoolsByResortLoaded({super.key, required this.carpoolPosts});

  @override
  ConsumerState<CarpoolsByResortLoaded> createState() =>
      CarpoolsByResortState();
}

class CarpoolsByResortState extends ConsumerState<CarpoolsByResortLoaded> {
  final Set<int> requestedIndices = {};

  @override
  Widget build(BuildContext context) {
    final List<Carpool> carpoolPosts = widget.carpoolPosts;

    final avatarAsset = 'assets/images/resorts/deer_valley.png';
    return Scaffold(
      appBar: AuthAppBar(),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: carpoolPosts.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.85,
        ),
        itemBuilder: (context, index) {
          final post = carpoolPosts[index];
          final isRequested = requestedIndices.contains(index);

          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(avatarAsset),
                  radius: 32,
                ),
                const SizedBox(height: 12),
                Text(
                  post.name ?? '',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Organized by: ',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                const SizedBox(height: 4),
                Text(
                  '${post.creator?.firstName ?? ''} ${post.creator?.lastName ?? ''}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  post.description ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 13, color: Colors.black87),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 16),
                Text(
                  'Departs on',
                  style: const TextStyle(fontSize: 14, color: Colors.black38),
                ),
                Text(
                  post.departureDate != null
                      ? DateFormat('MMM dd, yyyy').format(post.departureDate!)
                      : '',
                  style: const TextStyle(fontSize: 13, color: Colors.black54),
                ),
                Text(
                  'at ${post.departureTime}',
                  style: const TextStyle(fontSize: 12, color: Colors.black38),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed:
                      isRequested
                          ? null
                          : () {
                            context.goNamed(
                              Routes.carpoolConversation.name,
                              pathParameters: {'carpoolId': post.id.toString()},
                            );
                          },
                  child: Text('Join Now!'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Post {
  final String name;
  final String title;
  final String subtitle;
  final String date;
  final String departureTime;
  final String avatarAsset;

  Post({
    required this.name,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.departureTime,
    required this.avatarAsset,
  });
}
