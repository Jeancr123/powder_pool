import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:powder_pool/app_bars/presentation/auth_app_bar.dart';
import 'package:powder_pool/login/presentation/animated_button.dart';
import 'package:powder_pool/resorts/presentation/resorts_list.dart';
import 'package:powder_pool/router/domain/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(
      context,
    ).textTheme.apply(displayColor: Theme.of(context).colorScheme.onSurface);

    var width = MediaQuery.of(context).size.width;

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),
                      Center(
                        child: Container(
                          width: width,
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .6,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 100,
                                  ),
                                  child: Text(
                                    'CONNECTING YOU TO OTHER SKIERS',
                                    style: textTheme.headlineLarge?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 72,
                                      color: Color.fromRGBO(58, 58, 58, 1),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              SizedBox(width: 50),
                              Container(
                                width: MediaQuery.of(context).size.width * .30,
                                child: Text(
                                  'Stay connected with other skiers and travel together to the most beautiful resorts in Utah. Ride together, save money, and make new friends.',
                                  style: textTheme.headlineMedium?.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    letterSpacing:
                                        textTheme.headlineLarge?.letterSpacing,

                                    color: Color.fromRGBO(58, 58, 58, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 80),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .6,
                              height: 450,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/resorts/deer_valley.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 50),
                            Container(
                              width: MediaQuery.of(context).size.width * .3,
                              child: Column(
                                children: [
                                  Text(
                                    'GROWING COMMUNITY',
                                    style: textTheme.headlineMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color(0xFF116e74),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(height: 15),

                                  Text(
                                    'Join the growing PowderPool community and visit more resorts together. Find friends with discounts, skills, and more. PowderPool supports all the major resots in Utah, and we continue to grow and expand.',
                                    style: textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      letterSpacing:
                                          textTheme.bodySmall?.letterSpacing,
                                      color: Color.fromRGBO(58, 58, 58, 1),
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Text(
                                    'WHEN AND HOW IS UP TO YOU',
                                    style: textTheme.headlineMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color(0xFF116e74),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'It\'s okay to be nervous about riding with strangers. But with PowderPool, you can choose who you ride with and when. We\'re here to help you navigate meeting new skiers and connect through carpooling.',
                                    style: textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      letterSpacing:
                                          textTheme.bodySmall?.letterSpacing,
                                      color: Color.fromRGBO(58, 58, 58, 1),
                                    ),
                                  ),

                                  SizedBox(height: 50),
                                  Text(
                                    'SAVE THE PLANET',
                                    style: textTheme.headlineMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color(0xFF116e74),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(height: 15),

                                  Text(
                                    'What better way to help the planet and keep the snow going than to carpool? Save the planet by reducing the number of cars on the road and in the canyons, and by encouraging others to clean up the environment.',
                                    style: textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      letterSpacing:
                                          textTheme.bodySmall?.letterSpacing,
                                      color: Color.fromRGBO(58, 58, 58, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: width * .9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),
                      Text(
                        'JOIN THE COMMUNITY',
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
                          'Be part of a community that shares similar passions, interests, and hobbies.',
                          style: textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 52,
                            letterSpacing: textTheme.bodySmall?.letterSpacing,
                            color: Color.fromRGBO(58, 58, 58, 1),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width * .7,
                        child: Text(
                          'PowderPool helps the skiers of Utah connect and travel together. Say goodbye to standing for hours on the bus. No more paying for invasive gondolas or expensive parking fees. Instead, make new friends and enjoy the ride. Skiing is better with friends.',
                          style: textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            letterSpacing: textTheme.bodySmall?.letterSpacing,
                            color: Color.fromRGBO(58, 58, 58, 1),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      const SizedBox(height: 100),
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
