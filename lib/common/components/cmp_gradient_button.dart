import 'package:flutter/material.dart';
import 'package:showit/dependencies/dependencies.dart';

import '../common.dart';

class CmpGradientButton extends StatelessWidget {
  const CmpGradientButton({
    super.key,
    required this.title,
    this.svgPath,
    required this.onTap,
    this.padding,
  });

  final String title;
  final String? svgPath;
  final VoidCallback onTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 9,
            ).w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          gradient: const LinearGradient(
            colors: [
              BrColor.primaryDarkBlue01,
              BrColor.primaryLightBlue01,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgPath?.isNotEmpty ?? false) ...[
              SvgPicture.asset(
                svgPath!,
                width: 24.w,
                colorFilter: const ColorFilter.mode(
                  BrColor.neutralWhite,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(width: 6.w),
            ],
            Text(
              title,
              style: BrTypo.buttonBold(
                color: BrColor.neutralWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
