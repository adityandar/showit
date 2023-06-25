import 'package:showit/dependencies/dependencies.dart';

class TextFieldResultMdl extends Equatable {
  final String text;
  final String error;

  const TextFieldResultMdl({
    this.text = '',
    this.error = '',
  });

  TextFieldResultMdl copyWith({
    String? text,
    String? error,
  }) {
    return TextFieldResultMdl(
      text: text ?? this.text,
      error: error ?? this.error,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [text, error];
}
