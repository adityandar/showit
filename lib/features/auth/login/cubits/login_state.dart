part of 'login_cubit.dart';

class LoginState extends Equatable {
  final LoginFormz loginForm;
  final LoadDataState<void> loginState;

  const LoginState({
    required this.loginForm,
    required this.loginState,
  });

  LoginState copyWith({
    LoginFormz? loginForm,
    LoadDataState<void>? loginState,
  }) {
    return LoginState(
      loginForm: loginForm ?? this.loginForm,
      loginState: loginState ?? this.loginState,
    );
  }

  @override
  List<Object?> get props => [
        loginForm,
        loginState,
      ];
}
