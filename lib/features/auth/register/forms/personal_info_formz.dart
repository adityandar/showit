import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/utils/index.dart';

class PersonalInfoFormz with FormzMixin {
  const PersonalInfoFormz({
    required this.publicEmail,
    this.instagram = const NoValidationInput.pure(),
    this.linkedin = const NoValidationInput.pure(),
    this.twitter = const NoValidationInput.pure(),
    this.facebook = const NoValidationInput.pure(),
  });

  final EmailInput publicEmail;
  final NoValidationInput instagram;
  final NoValidationInput linkedin;
  final NoValidationInput twitter;
  final NoValidationInput facebook;

  PersonalInfoFormz copyWith({
    EmailInput? publicEmail,
    NoValidationInput? instagram,
    NoValidationInput? linkedin,
    NoValidationInput? twitter,
    NoValidationInput? facebook,
  }) {
    return PersonalInfoFormz(
      publicEmail: publicEmail ?? this.publicEmail,
      instagram: instagram ?? this.instagram,
      linkedin: linkedin ?? this.linkedin,
      twitter: twitter ?? this.twitter,
      facebook: facebook ?? this.facebook,
    );
  }

  @override
  List<FormzInput> get inputs => [
        publicEmail,
        instagram,
        linkedin,
        twitter,
        facebook,
      ];
}
