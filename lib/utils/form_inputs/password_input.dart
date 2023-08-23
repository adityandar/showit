import 'package:showit/dependencies/dependencies.dart';

enum PasswordInputError {
  tooShort,
  noDigit,
}

class PasswordInput extends FormzInput<String, PasswordInputError> {
  const PasswordInput.pure([String value = '']) : super.pure(value);
  const PasswordInput.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordInputError? validator(String value) {
    if (value.length < 8) {
      return PasswordInputError.tooShort;
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return PasswordInputError.noDigit;
    }

    return null;
  }
}

extension PasswordInputErrorExtension on PasswordInputError {
  String text() {
    switch (this) {
      case PasswordInputError.tooShort:
        return '''Password must be at least 8 characters''';
      case PasswordInputError.noDigit:
        return ''' Password must contain at least one letter and number''';
    }
  }
}
