import 'dart:async';

import '../../common/common.dart';

abstract class AuthRepository {
  Stream<UserMdl> get userStream;

  UserMdl get currentUser;

  Future<void> signUp({required String email, required String password});

  Future<void> logInWithGoogle();

  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> logOut();
}
