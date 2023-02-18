import 'package:flutter/material.dart';

class BrColor {
  const BrColor._();

  static const primaryLightBlue01 = Color(0xFF00DBFF);
  static const primaryLightBlue02 = Color(0xFF80EDFF);
  static const primaryLightBlue03 = Color(0xFFCCF8FF);

  static const primaryDarkBlue01 = Color(0xFF0859C6);
  static const primaryDarkBlue02 = Color(0xFF528BD7);
  static const primaryDarkBlue03 = Color(0xFFB5CDEE);

  static const neutralBlack01 = Color(0xFF272727);
  static const neutralBlack02 = Color(0xFF3D3D3D);
  static const neutralBlack03 = Color(0xFF525252);
  static const neutralBlack04 = Color(0xFF858585);
  static const neutralBlack05 = Color(0xFFC2C2C2);

  static const neutralGrey01 = Color(0xFFD6D6D6);
  static const neutralGrey02 = Color(0xFFE0E0E0);
  // static const neutralGrey03 = Color(0xFF);
  static const neutralGrey04 = Color(0xFFEBEBEB);
  static const neutralGrey05 = Color(0xFFF5F5F5);
  static const neutralWhite = Color(0xFFFFFFFF);

  static const gradient = LinearGradient(
    colors: [
      primaryDarkBlue01,
      primaryLightBlue01,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
