import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:powder_pool/app_bars/presentation/auth_app_bar.dart';
import 'package:powder_pool/loading/presentation/loading_welcome.dart';
import 'package:powder_pool/models/domain/resort_model.dart';
import 'package:powder_pool/resorts/application/resorts_provider.dart';
import 'package:powder_pool/resorts/presentation/card_button.dart';
import 'package:powder_pool/router/domain/routes.dart';

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

class MyTextStyle extends StatelessWidget {
  const MyTextStyle({super.key, required this.name, required this.style});

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Text(name, style: style), //.copyWith(letterSpacing: 1.0)
    );
  }
}

class ResortsPageLoaded extends StatelessWidget {
  ResortsPageLoaded({Key? key, required this.resorts}) : super(key: key);
  final List<Resort> resorts;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(
      context,
    ).textTheme.apply(displayColor: Theme.of(context).colorScheme.onSurface);

    // Set the default number of columns to 3.

    var width = MediaQuery.of(context).size.width;
    int columnsCount = 1;

    double iconSize = 45;

    if (ResponsiveUtils.isMobile(context)) {
      columnsCount = 1;
      iconSize = 30;
    } else if (ResponsiveUtils.isDesktop(context)) {
      columnsCount = 3;
      iconSize = 50;
    }

    return Scaffold(
      appBar: AuthAppBar(),
      body: Container(
        height: double.infinity,
        // color: const Color(0xFFF5F5F5),
        // ✅ Center the inner container
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: width * .90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),
                      Text(
                        'CONNECT',
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
                          'CARPOOL TO YOUR FAVORITE SKI RESORTS',
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
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/resorts/deer_valley.png",
                      ),
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
                        'SELECT A RESORT',
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
                          'Select from a variety of ski resorts with exciting adventures.',
                          style: textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 52,
                            letterSpacing: textTheme.bodySmall?.letterSpacing,
                            color: Color.fromRGBO(58, 58, 58, 1),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      SizedBox(height: 50),
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: columnsCount,
                          childAspectRatio: 5 / 7,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 30,
                        ),
                        itemCount: resorts.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ResortCard(resort: resorts[index]);
                        },
                        // Set the grid view to shrink wrap its contents.
                        shrinkWrap: true,
                        // Disable scrolling in the grid view.
                      ),
                      const SizedBox(height: 100),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * .7,
                          child: Text(
                            'Utah is home to 15 Ski Resorts, each with its own unique terrain and atmosphere. Come with us and connect with others to explore the best of Utah skiing.',
                            style: textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 36,
                              letterSpacing: textTheme.bodySmall?.letterSpacing,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      const SizedBox(height: 200),
                    ],
                  ),
                ),
                Container(height: 200, color: Color(0xff116e74)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResponsiveUtils {
  // Check if the device is considered as mobile based on screen width.
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;

  // Check if the device is considered as tablet based on screen width.
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 &&
      MediaQuery.of(context).size.width <= 1200;

  // Check if the device is considered as desktop based on screen width.
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1200;
}

class ResortCard extends StatelessWidget {
  final Resort resort;

  const ResortCard({required this.resort, super.key});

  @override
  Widget build(BuildContext context) {
    final imagePath = "assets/images/resorts/deer_valley.png";

    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // 👈 No rounding
      ),
      elevation: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min, // 🔑 only wrap content vertically
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            // Add an image to each card.
            child: Image.network(resort.imageUrl!, fit: BoxFit.cover),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // 🔑 also on inner column
              children: [
                MyTextStyle(
                  name: resort.name ?? '',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                MyTextStyle(
                  name: "${resort.city ?? ''}, ${resort.state ?? ''}",
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 10),
                MyTextStyle(
                  name: resort.description ?? '',
                  style: const TextStyle(fontSize: 14, height: 1.3),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: ScheduleCarpoolLink(
                    onTap: () {
                      context.goNamed(
                        Routes.carpoolsByResort.name,
                        extra: resort,
                        pathParameters: {'resortId': resort.id.toString()},
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
