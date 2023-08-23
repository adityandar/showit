part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final LoadDataState<bool> authenticationDataState;

  const AuthState({
    required this.authenticationDataState,
  });

  AuthState copyWith({
    LoadDataState<bool>? authenticationDataState,
  }) {
    return AuthState(
      authenticationDataState:
          authenticationDataState ?? this.authenticationDataState,
    );
  }

  @override
  List<Object> get props => [authenticationDataState];
}
