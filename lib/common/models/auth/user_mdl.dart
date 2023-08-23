import 'package:equatable/equatable.dart';

/// {@template user}
/// UserMdl model
///
/// [UserMdl.empty] represents an unauthenticated user.
/// {@endtemplate}
class UserMdl extends Equatable {
  /// {@macro user}
  const UserMdl({
    required this.id,
    this.email,
    this.name,
    this.photo,
  });

  bool get isValid => id.isNotEmpty && (email?.isNotEmpty ?? false);

  /// The current user's email address.
  final String? email;

  /// The current user's id.
  final String id;

  /// The current user's name (display name).
  final String? name;

  /// Url for the current user's photo.
  final String? photo;

  /// Empty user which represents an unauthenticated user.
  static const empty = UserMdl(id: '');

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == UserMdl.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != UserMdl.empty;

  @override
  List<Object?> get props => [email, id, name, photo];
}
