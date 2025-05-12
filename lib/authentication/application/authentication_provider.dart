import 'package:powder_pool/api_client/application/api_client_provider.dart';
import 'package:powder_pool/api_client/data/api_client.dart';
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
    await apClient.login(email, password);
    state = AuthenticationStatus.authenticated;
  }

  Future<void> logOut() async {
    await apClient.logout();
    state = AuthenticationStatus.unauthenticated;
  }

  // void signUp(User user) async {
  //   await apClient.signUp(user);
  //   state = AuthenticationStatus.authenticated;
  // }
}

enum AuthenticationStatus { authenticated, unauthenticated }
