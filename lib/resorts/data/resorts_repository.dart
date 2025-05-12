import 'package:powder_pool/api_client/data/api_client.dart';
import 'package:powder_pool/models/domain/resort_model.dart';

class ResortsRepository {
  ResortsRepository({required this.apiClient});

  final ApiClient apiClient;

  Future<List<Resort>> getResorts() async {
    final response = await apiClient.authenticatedGet('/resorts');
    var resortsJson = response['data'] as List;
    List<Resort> resorts = [];
    for (var resortJson in resortsJson) {
      resorts.add(Resort.fromJson(resortJson));
    }
    return resorts;
  }
}
