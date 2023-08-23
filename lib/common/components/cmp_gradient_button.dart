import 'package:flutter/material.dart';
import 'package:showit/dependencies/dependencies.dart';

import '../common.dart';

class CmpGradientButton extends StatelessWidget {
  const CmpGradientButton({
    super.key,
    required this.title,
    this.padding,
    this.svgPath,
    required this.onTap,
    this.isLoading = false,
  });

  final String title;
  final EdgeInsets? padding;
  final String? svgPath;
  final VoidCallback? onTap;
  final bool isLoading;

  bool get isOnTapExists => onTap != null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.w,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 13).w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          gradient: isOnTapExists
              ? const LinearGradient(
                  colors: [
                    BrColor.primaryDarkBlue01,
                    BrColor.primaryLightBlue01,
                  ],
                )
              : null,
          color: BrColor.neutralGrey01,
        ),
        child: isLoading
            ? SizedBox(
                width: double.maxFinite,
                height: 24.w,
                child: LoadingAnimationWidget.hexagonDots(
                  color: BrColor.neutralWhite,
                  size: 24.w,
                ),
              )
            : Row(
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
