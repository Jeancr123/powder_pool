import 'package:powder_pool/api_client/application/api_client_provider.dart';
import 'package:powder_pool/models/domain/resort_model.dart';
import 'package:powder_pool/resorts/data/resorts_repository.dart';
import 'package:riverpod/riverpod.dart';

final resortsProvider = FutureProvider<List<Resort>>((ref) async {
  final resultsRepository = ref.watch(resortsRepositoryProvider);
  return await resultsRepository.getResorts();
});

final resortsRepositoryProvider = Provider<ResortsRepository>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return ResortsRepository(apiClient: apiClient);
});
