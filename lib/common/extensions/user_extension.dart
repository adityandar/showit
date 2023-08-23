import '../../dependencies/dependencies.dart';
import '../common.dart';

extension UserExtension on User {
  /// Maps a [User] into a [UserMdl].
  UserMdl get toUser {
    return UserMdl(id: uid, email: email, name: displayName, photo: photoURL);
  }
}
