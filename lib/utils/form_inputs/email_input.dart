import 'package:showit/dependencies/dependencies.dart';

enum EmailInputError { invalid }

class EmailInput extends FormzInput<String, EmailInputError>
    with FormzInputErrorCacheMixin {
  EmailInput.pure([super.value = '']) : super.pure();

  EmailInput.dirty([super.value = '']) : super.dirty();

  static final _emailRegExp = RegExp(
    r'^[a-zA-Z\d.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z\d-]+(?:\.[a-zA-Z\d-]+)*$',
  );

  @override
  EmailInputError? validator(String value) {
    return _emailRegExp.hasMatch(value) ? null : EmailInputError.invalid;
  }
}

extension EmailInputErrorExtension on EmailInputError {
  String text() {
    switch (this) {
      case EmailInputError.invalid:
        return 'Please ensure the email entered is valid';
    }
  }
}
