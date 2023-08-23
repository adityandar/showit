import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/utils/index.dart';

class LoginFormz with FormzMixin {
  LoginFormz({
    this.password = const PasswordInput.pure(),
    required this.email,
  });

  final EmailInput email;
  final PasswordInput password;

  LoginFormz copyWith({
    EmailInput? email,
    PasswordInput? password,
  }) {
    return LoginFormz(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<FormzInput> get inputs => [email, password];
}
