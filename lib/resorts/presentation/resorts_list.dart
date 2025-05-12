import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:powder_pool/app_bars/presentation/unauthenticated.dart';
import 'package:powder_pool/loading/presentation/loading_welcome.dart';
import 'package:powder_pool/models/domain/resort_model.dart';
import 'package:powder_pool/resorts/application/resorts_provider.dart';
import 'package:powder_pool/resorts/presentation/card_button.dart';

class ResortsPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var resorts = ref.watch(resortsProvider);
    return resorts.when(
      data: (resorts) {
        return ResortsPageLoaded(resorts: resorts);
      },
      error: (err, stack) => Text('Something went wrong'),
      loading: () => LoadingWelcome(),
    );
  }
}

class ResortsPageLoaded extends StatelessWidget {
  ResortsPageLoaded({super.key, required this.resorts});

  final List<Resort> resorts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth > 600;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isWide ? 3 : 1,
                childAspectRatio: 1.3, // 📏 makes cards shorter and wider
              ),
              itemCount: resorts.length,
              itemBuilder: (context, index) {
                return ResortCard(resort: resorts[index]);
              },
            );
          },
        ),
      ),
    );
  }
}

class ResortCard extends StatelessWidget {
  final Resort resort;

  const ResortCard({required this.resort, super.key});

  @override
  Widget build(BuildContext context) {
    final imagePath = "assets/images/resorts/deer_valley.png";

    return IntrinsicHeight(
      // 🔑 keeps Card only as tall as needed
      child: Card(
        color: const Color(0xFFF5F5F5),
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Column(
          mainAxisSize: MainAxisSize.min, // 🔑 only wrap content vertically
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(14),
              ),
              child: Image.asset(
                imagePath,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, // 🔑 also on inner column
                children: [
                  Text(
                    resort.name ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "${resort.city ?? ''}, ${resort.state ?? ''}",
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                    style: const TextStyle(fontSize: 14, height: 1.3),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ScheduleCarpoolLink(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Schedul carpool to ${resort.name}"),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
