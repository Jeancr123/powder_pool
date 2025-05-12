import 'package:powder_pool/api_client/data/api_client.dart';
import 'package:powder_pool/models/carpool_model.dart';
import 'package:powder_pool/models/domain/resort_model.dart';
import 'package:powder_pool/models/domain/uuid.dart';

class CarpoolsRepository {
  CarpoolsRepository({required this.apiClient});

  final ApiClient apiClient;

  Future<List<Carpool>> getCarpools() async {
    final response = await apiClient.authenticatedGet('/carpools');
    var carpoolsJson = response['data'] as List;
    List<Carpool> carpools = [];
    for (var carpoolJson in carpoolsJson) {
      carpools.add(Carpool.fromJson(carpoolJson));
    }
    return carpools;
  }

  Future<List<Carpool>> getCarpoolsByResortId(Uuid resortId) async {
    final response = await apiClient.authenticatedGet('/get_carpools_by_resort/$resortId');
    var carpoolsJson = response['data'] as List;
    List<Carpool> carpools = [];
    for (var carpoolJson in carpoolsJson) {
      carpools.add(Carpool.fromJson(carpoolJson));
    }
    return carpools;
  }
}
