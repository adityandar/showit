import 'package:showit/dependencies/dependencies.dart';

enum NoValidationInputError { empty }

class NoValidationInput extends FormzInput<String, NoValidationInputError> {
  const NoValidationInput.pure([super.value = '']) : super.pure();

  const NoValidationInput.dirty([super.value = '']) : super.dirty();

  @override
  NoValidationInputError? validator(String value) {
    return null;
  }
}
