import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:powder_pool/api_client/application/api_client_provider.dart';
import 'package:powder_pool/carpool_by_resort/data/carpools_repository.dart';
import 'package:powder_pool/models/carpool_model.dart';
import 'package:powder_pool/models/domain/uuid.dart';

final carpoolsByResortId = FutureProvider.family<List<Carpool>, Uuid>((
  ref,
  resortId,
) async {
  final carpoolsRepository = ref.watch(carpoolsProvider);
  return await carpoolsRepository.getCarpoolsByResortId(resortId);
});

final carpoolsProvider = Provider<CarpoolsRepository>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return CarpoolsRepository(apiClient: apiClient);
});
