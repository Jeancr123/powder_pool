import 'package:powder_pool/api_client/data/api_client.dart';
import 'package:powder_pool/models/domain/resort_model.dart';
import 'package:powder_pool/models/domain/uuid.dart';

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

  Future<Resort> getResortById(Uuid id) async {
    final response = await apiClient.authenticatedGet(
      '/resort_by_id/${id.toString()}',
    );
    return Resort.fromJson(response['data']);
  }
}
