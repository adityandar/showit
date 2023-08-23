import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/core/index.dart';
import 'package:showit/dependencies/dependencies.dart';

import '../cubits/register_cubit.dart';

class RegisterListener {
  static void listen(BuildContext context, RegisterState state) {
    DataStateListener.listen(
      context,
      state.registerState,
      onSuccessCallback: (data) {
        context.read<AuthCubit>().checkLoggedInStatus();
      },
    );
  }
}
