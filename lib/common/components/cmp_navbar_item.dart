import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:showit/common/common.dart';

class CmpNavbarItem extends StatelessWidget {
  const CmpNavbarItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.index,
    required this.activeTabIndex,
    required this.onTap,
  });

  final String iconPath;
  final String label;
  final int index;
  final int activeTabIndex;
  final ValueChanged<int> onTap;

  bool get isActive => index == activeTabIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(index),
        behavior: HitTestBehavior.translucent,
        child: Container(
          color: BrColor.neutralWhite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                iconPath,
                width: 24.w,
                height: 24.w,
                colorFilter: ColorFilter.mode(
                  isActive ? BrColor.primaryDarkBlue01 : BrColor.neutralGrey01,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(height: 2.w),
              Text(
                label,
                style: BrTypo.captionRegular(
                  color: isActive
                      ? BrColor.primaryDarkBlue01
                      : BrColor.neutralGrey01,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
