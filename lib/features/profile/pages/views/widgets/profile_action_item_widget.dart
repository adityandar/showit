import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class ProfileActionItemWidget extends StatelessWidget {
  const ProfileActionItemWidget({
    super.key,
    required this.svgPath,
    required this.title,
    required this.onTap,
  });

  final String svgPath;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8).w,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8).w,
              decoration: BoxDecoration(
                color: BrColor.neutralGrey05,
                borderRadius: BorderRadius.circular(8).r,
              ),
              child: SvgPicture.asset(
                svgPath,
                width: 16.w,
                colorFilter: const ColorFilter.mode(
                  BrColor.neutralBlack01,
                  BlendMode.srcIn,
                ),
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Text(
                title,
                style: BrTypo.buttonBold(),
              ),
            ),
            SizedBox(width: 8.w),
            SvgPicture.asset(
              Assets.svgs.icChevronRight.path,
              width: 16.w,
            ),
          ],
        ),
      ),
    );
  }
}
