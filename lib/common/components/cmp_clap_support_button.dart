import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:showit/assets/assets.gen.dart';
import 'package:showit/common/common.dart';

class CmpClapSupportButton extends StatelessWidget {
  const CmpClapSupportButton({
    super.key,
    this.isSupported = false,
    this.amount = 0,
    this.onTap,
  });

  final bool isSupported;
  final int amount;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(
            isSupported
                ? Assets.svgs.icClapActive.keyName
                : Assets.svgs.icClapInactive.keyName,
            width: 16.w,
            height: 16.w,
            color: isSupported
                ? BrColor.primaryDarkBlue01
                : BrColor.neutralBlack05,
          ),
        ),
        SizedBox(width: 2.w),
        Text(
          '$amount',
          style: BrTypo.captionRegular(
            color: isSupported
                ? BrColor.primaryDarkBlue01
                : BrColor.neutralBlack05,
          ),
        ),
      ],
    );
  }
}
