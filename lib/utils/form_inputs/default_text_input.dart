import 'package:showit/dependencies/dependencies.dart';

enum DefaultTextInputError { empty }

class DefaultTextInput extends FormzInput<String, DefaultTextInputError> {
  const DefaultTextInput.pure([super.value = '']) : super.pure();

  const DefaultTextInput.dirty([super.value = '']) : super.dirty();

  @override
  DefaultTextInputError? validator(String value) {
    return value.isNotEmpty ? null : DefaultTextInputError.empty;
  }
}

extension DefaultTextInputErrorExtension on DefaultTextInputError {
  String text() {
    switch (this) {
      case DefaultTextInputError.empty:
        return 'Text can\'t be empty';
    }
  }
}
