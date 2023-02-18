import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showit/common/common.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    Key? key,
    required this.text,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 6.w,
        ),
        margin: EdgeInsets.only(right: 8.w),
        decoration: BoxDecoration(
          color: isActive ? BrColor.primaryLightBlue03 : BrColor.neutralWhite,
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(
            color: isActive ? Colors.transparent : BrColor.neutralGrey05,
          ),
        ),
        child: Text(
          text,
          style: BrTypo.bodySmallRegular(
            color:
                isActive ? BrColor.primaryDarkBlue01 : BrColor.neutralBlack05,
          ),
        ),
      ),
    );
  }
}
