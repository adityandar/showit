import 'dart:ui';

import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

enum SnackbarType {
  warning,
  success,
  failed,
}

class CmpSnackbar {
  static void showWithoutContext({
    required String message,
    required SnackbarType type,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: type.backgroundColor,
      textColor: BrColor.neutralWhite,
      fontSize: 16.0,
    );
  }
}

extension SnackbarTypeExtension on SnackbarType {
  Color get backgroundColor {
    switch (this) {
      case SnackbarType.warning:
        return BrColor.tertiaryWarning;
      case SnackbarType.success:
        return BrColor.tertiarySuccess;
      case SnackbarType.failed:
        return BrColor.tertiaryError;
    }
  }
}
