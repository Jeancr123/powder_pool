import 'package:powder_pool/api_client/application/api_client_provider.dart';
import 'package:powder_pool/api_client/data/api_client.dart';
import 'package:powder_pool/models/domain/user_model.dart';
import 'package:riverpod/riverpod.dart';

final authenticationProvider =
    StateNotifierProvider<AuthenticationState, AuthenticationStatus>((ref) {
      final apiClient = ref.watch(apiClientProvider);
      return AuthenticationState(apiClient);
    });

class AuthenticationState extends StateNotifier<AuthenticationStatus> {
  AuthenticationState(this.apClient)
    : super(AuthenticationStatus.unauthenticated);

  final ApiClient apClient;

  Future<void> login(email, password) async {
    try {
      state = AuthenticationStatus.unauthenticated;
      await apClient.login(email, password);
      state = AuthenticationStatus.authenticated;
    } catch (e) {
      super.state = AuthenticationStatus.error;
    }
  }

  Future<void> logOut() async {
    await apClient.logout();
    state = AuthenticationStatus.unauthenticated;
  }

  Future<void> signUp(User user) async {
    await apClient.signUp(user);
    state = AuthenticationStatus.authenticated;
  }
}

enum AuthenticationStatus {
  authenticating,
  authenticated,
  unauthenticated,
  error,
}
