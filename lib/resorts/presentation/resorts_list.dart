import 'package:flutter/material.dart';
import 'package:powder_pool/app_bars/presentation/unauthenticated.dart';
import 'package:powder_pool/resorts/presentation/card_button.dart';

class ResortsPage extends StatelessWidget {
  ResortsPage({super.key});

  final List<Map<String, String>> resorts = [
    {
      "name": "Deer Valley Resort",
      "image": "assets/images/resorts/deer_valley.png",
      "description":
          "Deer Valley Resort is a ski resort located in Park City, Utah. It is known for its upscale amenities and exceptional customer service.",
      "city": "Park City",
      "state": "Utah",
    },
    {
      "name": "Park City Mountain Resort",
      "image": "assets/images/resorts/deer_valley.png",
      "description":
          "Park City Mountain Resort is one of the largest ski resorts in the United States, offering a wide range of terrain and activities.",
      "city": "Park City",
      "state": "Utah",
    },
    {
      "name": "Snowbird",
      "image": "assets/images/resorts/deer_valley.png",
      "description":
          "Snowbird is a ski resort located in Little Cottonwood Canyon, Utah. It is known for its steep terrain and deep powder.",
      "city": "Park City",
      "state": "Utah",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UnauthenticatedAppBar(),
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
  final Map<String, String> resort;

  const ResortCard({required this.resort, super.key});

  @override
  Widget build(BuildContext context) {
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
                resort["image"]!,
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
                    resort["name"]!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "${resort["city"]}, ${resort["state"]}",
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    resort["description"]!,
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
                            content: Text(
                              "Scheduling carpool to ${resort["name"]}",
                            ),
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
