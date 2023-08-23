import 'package:flutter/material.dart';
import 'package:showit/common/components/index.dart';
import 'package:showit/core/index.dart';

class DataStateListener {
  static void listen<T>(
    BuildContext context,
    LoadDataState<T> dataState, {
    void Function(T? data)? onSuccessCallback,
  }) {
    if (dataState.isSuccess) {
      onSuccessCallback?.call(dataState.data);
    }
    if (dataState.isFailed) {
      CmpSnackbar.showWithoutContext(
        message: dataState.error,
        type: SnackbarType.failed,
      );
    }
  }
}
