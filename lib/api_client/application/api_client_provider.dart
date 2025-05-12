import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:powder_pool/api_client/data/api_client.dart';

final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient();
});