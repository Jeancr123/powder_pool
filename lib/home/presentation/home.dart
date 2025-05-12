import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:powder_pool/app_bars/presentation/unauthenticated.dart';
import 'package:powder_pool/login/presentation/animated_button.dart';
import 'package:powder_pool/router/domain/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _controller?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          // Hero Image
          Image.asset(
            'assets/images/background.png',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // Slogan and Description
          Container(
            color: const Color(0xFFF8F8F8),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            child: Column(
              children: const [
                Text(
                  'ALL ACCESS. ALL MOUNTAIN. ALL SNOW.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.5,
                    color: Color(0xFF333333),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24),
                Text(
                  '''PowderPool is the smart way to carpool to your favorite ski resorts. Whether you're chasing first tracks, saving on gas and parking, or just looking for good company on the drive up, PowderPool makes it easy to match with riders who fit your vibe, your schedule, and your mountain goals.''',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF555555),
                    // height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // HOW WE HELP YOU Section
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
            child: Column(
              children: [
                const Text(
                  'HOW WE HELP YOU',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  'These are just some of the many reasons to use PowderPool. '
                  'With PowderPool, you can find the best carpooling options that fit your time, your vibe, and your wallet.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
                const SizedBox(height: 32),

                // Responsive Offer Cards
                Wrap(
                  spacing: 20,
                  runSpacing: 32,
                  alignment: WrapAlignment.center,
                  children: const [
                    OfferCard(
                      image: 'assets/images/pros/planet.png',
                      title: 'CARPOOL AND SAVE THE PLANET',
                      subtitle: 'Want to keep the mountains snowy?',
                    ),
                    OfferCard(
                      image: 'assets/images/pros/parking.png',
                      title: 'FILL THE CAR, WIN THE PARKING LOT',
                      subtitle:
                          'Don\'t have enough people to park at the resort?',
                    ),
                    OfferCard(
                      image: 'assets/images/pros/save.png',
                      title: 'SPLIT THE COST: GAS AND PARKING',
                      subtitle: 'Want to save \$?',
                    ),
                    OfferCard(
                      image: 'assets/images/pros/comfort.png',
                      title: 'RIDE COMFY AND SAFE',
                      subtitle: 'Hate the bus?',
                    ),
                    OfferCard(
                      image: 'assets/images/pros/friends.png',
                      title: 'RIDE WITH FRIENDS OR MAKE NEW ONES',
                      subtitle: 'Tired of riding alone?',
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .4,
                  child: AnimatedButton(
                    controller: _controller!,
                    label: 'Register Now!',
                    onTap: () {
                      context.goNamed(Routes.signUp.name);
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

class OfferCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const OfferCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220, // Control width for max 3 per row on large screens
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, height: 80),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
