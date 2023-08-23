import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/utils/index.dart';

class RegisterFormz with FormzMixin {
  const RegisterFormz({
    this.username = const DefaultTextInput.pure(),
    this.password = const PasswordInput.pure(),
    required this.email,
  });

  final DefaultTextInput username;
  final EmailInput email;
  final PasswordInput password;

  RegisterFormz copyWith({
    DefaultTextInput? username,
    EmailInput? email,
    PasswordInput? password,
  }) {
    return RegisterFormz(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<FormzInput> get inputs => [username, email, password];
}
