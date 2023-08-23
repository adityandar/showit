import 'package:showit/core/index.dart';
import 'package:showit/dependencies/dependencies.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required this.repository,
  }) : super(
          const AuthState(
            authenticationDataState: LoadDataInitial(),
          ),
        );

  final AuthRepository repository;

  Future<void> checkLoggedInStatus() async {
    try {
      await repository.userStream.first;
    } catch (_) {}
    final user = repository.currentUser;

    emit(
      state.copyWith(
        authenticationDataState: LoadDataSuccess(user.isValid),
      ),
    );
  }

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await repository.signUp(
        email: email,
        password: password,
      );
      await checkLoggedInStatus();
    } catch (e) {
      emit(state.copyWith(authenticationDataState: LoadDataFailed('$e')));
      emit(state.copyWith(authenticationDataState: const LoadDataInitial()));
    }
  }

  Future<void> logOut() async {
    try {
      await repository.logOut();
      await checkLoggedInStatus();
    } catch (e) {
      emit(state.copyWith(authenticationDataState: LoadDataFailed('$e')));
    }
  }
}
