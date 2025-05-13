import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:powder_pool/app_bars/presentation/auth_app_bar.dart';
import 'package:powder_pool/carpool_by_resort/application/carpools_by_resort_provider.dart';
import 'package:powder_pool/models/carpool_model.dart';
import 'package:powder_pool/models/domain/conversation_model.dart';
import 'package:powder_pool/models/domain/resort_model.dart';
import 'package:powder_pool/models/domain/uuid.dart';

class CarpoolConversation extends ConsumerWidget {
  final Uuid carpoolId;
  const CarpoolConversation({super.key, required this.carpoolId});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var carpool = ref.watch(carpoolWithConversation(carpoolId));
    return carpool.when(
      data: (carpool) {
        return CarpoolConversationLoaded(carpool: carpool);
      },
      error: (error, stackTrace) {
        return Center(child: Text('Error: $error'));
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class CarpoolConversationLoaded extends StatelessWidget {
  const CarpoolConversationLoaded({super.key, required this.carpool});

  final Carpool carpool;

  @override
  Widget build(BuildContext context) {
    final Conversation? conversation = carpool.conversation;
    final Resort resort = carpool.resort!;

    return Scaffold(
      appBar: AuthAppBar(),
      body: Row(
        children: [
          // Left panel: Resort Profile
          Expanded(
            flex: 2,
            child: Container(
              color: const Color.fromARGB(255, 242, 242, 245),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        resort.imageUrl!,
                        height: 160,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      resort.name ?? '',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text('Address :${resort.address ?? ''}'),
                    Text('City: ${resort.city ?? ''}'),
                    Text('State: ${resort.state ?? ''}'),
                    Text('Zip Code: ${resort.zipCode ?? ''}'),
                    Divider(height: 32),
                    Text(
                      'Trip Info',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Departure Date: ${carpool.departureDate != null ? DateFormat('MMM dd, yyyy').format(carpool.departureDate!) : ''}',
                    ),
                    Text('Departure Time: ${carpool.departureTime ?? ''}'),
                    Text(
                      'Return Date: ${carpool.returningDate != null ? DateFormat('MMM dd, yyyy').format(carpool.returningDate!) : ''}',
                    ),
                    Text('Return Time: ${carpool.returningTime ?? ''}'),
                  ],
                ),
              ),
            ),
          ),

          // Middle panel: Messages
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      carpool.name ?? '',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Welcome to the ${carpool.name} chat...'),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(16.0),
                      children: const [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Awesome! It’s going to be amazing!'),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Chip(
                            label: Text(
                              'Thanks for sending the deal!',
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Color(0xFF116e74),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Write a message...',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('This feature is in the works!'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Right panel: Members
          Expanded(
            flex: 3,
            child: Container(
              color: const Color(0xFFF9FAFB),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Chat Members',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: CircleAvatar(),
                    title: Text('Leslie Laurens'),
                    subtitle: Text('Avid Skier'),
                    trailing: Icon(Icons.message),
                  ),
                  const ListTile(
                    leading: CircleAvatar(),
                    title: Text('Leo Beste'),
                    subtitle: Text('Snowboarder turned Skier'),
                    trailing: Icon(Icons.message),
                  ),
                  const ListTile(
                    leading: CircleAvatar(),
                    title: Text('Sandro Tavares'),
                    subtitle: Text('Freestyle Skier'),
                    trailing: Icon(Icons.shield),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
