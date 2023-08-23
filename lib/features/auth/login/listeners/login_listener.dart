import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/core/index.dart';
import 'package:showit/dependencies/dependencies.dart';

import '../cubits/login_cubit.dart';

class LoginListener {
  static void listen(BuildContext context, LoginState state) {
    DataStateListener.listen(
      context,
      state.loginState,
      onSuccessCallback: (data) {
        context.read<AuthCubit>().checkLoggedInStatus();
      },
    );
  }
}
