import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class CmpIconButton extends StatelessWidget {
  const CmpIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final Icon icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          color: BrColor.neutralWhite,
          boxShadow: BrShadow.def,
          shape: BoxShape.circle,
        ),
        child: icon,
      ),
    );
  }
}
