import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/core/index.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/settings/settings.dart';

class AuthListener {
  const AuthListener._();

  static void listen(
    BuildContext context,
    AuthState state,
  ) {
    DataStateListener.listen(
      context,
      state.authenticationDataState,
      onSuccessCallback: (data) {
        context.router.push(
          (data ?? false) ? const MainRoute() : const IntroductionRoute(),
        );
      },
    );
  }
}
