import 'package:flutter/material.dart';

import 'index.dart';

class BrShadow {
  const BrShadow._();

  static List<BoxShadow> get def => [
        BoxShadow(
          offset: const Offset(0, 2),
          blurRadius: 10,
          color: BrColor.neutralBlack03.withOpacity(0.05),
        ),
      ];

  static List<BoxShadow> get blue => [
        BoxShadow(
          offset: const Offset(0, 2),
          blurRadius: 10,
          color: BrColor.primaryDarkBlue01.withOpacity(0.08),
        ),
      ];
}
