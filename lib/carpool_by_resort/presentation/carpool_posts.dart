// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';
// import 'package:intl/intl.dart';
// import 'package:powder_pool/app_bars/presentation/auth_app_bar.dart';
// import 'package:powder_pool/carpool_by_resort/application/carpools_by_resort_provider.dart';
// import 'package:powder_pool/loading/presentation/loading_welcome.dart';
// import 'package:powder_pool/models/carpool_model.dart';
// import 'package:powder_pool/models/domain/uuid.dart';
// import 'package:powder_pool/resorts/presentation/card_button.dart';
// import 'package:powder_pool/resorts/presentation/resorts_list.dart';
// import 'package:powder_pool/router/domain/routes.dart';

// class CarpoolsByResortPage extends ConsumerWidget {
//   final Uuid resortId;
//   const CarpoolsByResortPage({super.key, required this.resortId});
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var carpoolPosts = ref.watch(carpoolsByResortId(resortId));
//     return carpoolPosts.when(
//       data: (carpoolPosts) {
//         return CarpoolsByResortLoaded(carpoolPosts: carpoolPosts);
//       },
//       error: (error, stackTrace) {
//         return Center(child: Text('Error: $error'));
//       },
//       loading: () => LoadingWelcome(),
//     );
//   }
// }

// class CarpoolsByResortLoaded extends ConsumerStatefulWidget {
//   final List<Carpool> carpoolPosts;
//   const CarpoolsByResortLoaded({super.key, required this.carpoolPosts});

//   @override
//   ConsumerState<CarpoolsByResortLoaded> createState() =>
//       CarpoolsByResortState();
// }

// class CarpoolsByResortState extends ConsumerState<CarpoolsByResortLoaded> {
//   final Set<int> requestedIndices = {};

//   @override
//   Widget build(BuildContext context) {
//     List<Carpool> carpoolPosts = widget.carpoolPosts;
//     carpoolPosts.sort((a, b) {
//       // Sort by departure date first, then by departure time
//       if (a.departureDate != null && b.departureDate != null) {
//         return a.departureDate!.compareTo(b.departureDate!);
//       } else if (a.departureDate == null && b.departureDate == null) {
//         return 0;
//       } else if (a.departureDate == null) {
//         return 1;
//       } else {
//         return -1;
//       }
//     });
//     final textTheme = Theme.of(
//       context,
//     ).textTheme.apply(displayColor: Theme.of(context).colorScheme.onSurface);

//     // Set the default number of columns to 3.
//     int columnsCount = 2;

//     double iconSize = 45;

//     if (ResponsiveUtils.isMobile(context)) {
//       columnsCount = 1;
//       iconSize = 30;
//     } else if (ResponsiveUtils.isDesktop(context)) {
//       columnsCount = 4;
//       iconSize = 50;
//     }

//     return Scaffold(
//       appBar: AuthAppBar(),
//       // d8e4eb hex
//       body: Container(
//         color: const Color.fromARGB(255, 216, 231, 240),
//         child: GridView.builder(
//           padding: const EdgeInsets.all(10),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: columnsCount,
//             childAspectRatio: 3 / 2,
//             crossAxisSpacing: 20,
//             mainAxisSpacing: 10,
//           ),
//           itemCount: carpoolPosts.length,
//           itemBuilder: (BuildContext context, int index) {
//             return CarpoolCard(carpool: carpoolPosts[index]);
//           },
//           // Set the grid view to shrink wrap its contents.
//           shrinkWrap: true,
//           // Disable scrolling in the grid view.
//         ),
//       ),
//     );
//   }
// }

// class CarpoolCard extends StatelessWidget {
//   final Carpool carpool;

//   const CarpoolCard({required this.carpool, super.key});

//   @override
//   Widget build(BuildContext context) {
//     final imagePath = "assets/images/resorts/deer_valley.png";

//     return Card(
//       color: Colors.white,
//       elevation: 3,
//       child: Column(
//         mainAxisSize: MainAxisSize.min, // 🔑 only wrap content vertically
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           // Expanded(
//           //   // Add an image to each card.
//           //   child: Image.asset(imagePath, fit: BoxFit.cover),
//           // ),
//           const SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),

//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min, // 🔑 also on inner column
//               children: [
//                 MyTextStyle(
//                   name: carpool.name ?? '',
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//                 MyTextStyle(
//                   name:
//                       "Organized by: ${carpool.creator?.firstName ?? ''} ${carpool.creator?.lastName ?? ''}",
//                   style: const TextStyle(fontSize: 14, color: Colors.black54),
//                 ),
//                 const SizedBox(height: 10),
//                 MyTextStyle(
//                   name: carpool.description ?? '',
//                   style: const TextStyle(fontSize: 14, height: 1.3),
//                 ),
//                 const SizedBox(height: 5),
//                 MyTextStyle(
//                   name:
//                       carpool.departureDate != null
//                           ? DateFormat(
//                             'MMM dd, yyyy',
//                           ).format(carpool.departureDate!)
//                           : '',
//                   style: const TextStyle(fontSize: 14, color: Colors.black54),
//                 ),
//                 const SizedBox(height: 2),
//                 MyTextStyle(
//                   name: carpool.departureTime ?? '',
//                   style: const TextStyle(fontSize: 14, color: Colors.black54),
//                 ),

//                 const SizedBox(height: 8),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: JoinCarpoolLink(
//                     onTap: () {
//                       context.goNamed(
//                         Routes.carpoolConversation.name,
//                         pathParameters: {'carpoolId': carpool.id.toString()},
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
