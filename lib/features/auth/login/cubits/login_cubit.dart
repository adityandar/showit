import 'package:showit/core/index.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/utils/index.dart';

import '../forms/index.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required this.repository,
  }) : super(
          LoginState(
            loginForm: LoginFormz(email: EmailInput.pure()),
            loginState: const LoadDataInitial(),
          ),
        );

  final AuthRepository repository;

  void onEmailChanged(String email) {
    emit(
      state.copyWith(
        loginForm: state.loginForm.copyWith(
          email: EmailInput.dirty(email),
        ),
      ),
    );
  }

  void onPasswordChanged(String password) {
    emit(
      state.copyWith(
        loginForm: state.loginForm.copyWith(
          password: PasswordInput.dirty(password),
        ),
      ),
    );
  }

  Future<void> submitLogin() async {
    try {
      emit(state.copyWith(loginState: const LoadDataLoading()));
      await repository.logInWithEmailAndPassword(
        email: state.loginForm.email.value,
        password: state.loginForm.password.value,
      );
      emit(state.copyWith(loginState: const LoadDataSuccess()));
    } catch (e) {
      emit(state.copyWith(loginState: LoadDataFailed('$e')));
      emit(state.copyWith(loginState: const LoadDataInitial()));
    }
  }
}
