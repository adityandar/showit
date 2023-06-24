import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class ProjectCTAWidget extends StatelessWidget {
  const ProjectCTAWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.callToActionText,
    required this.callToActionCallback,
  });

  final String title;
  final String subtitle;
  final String callToActionText;
  final VoidCallback callToActionCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16).w,
      decoration: BoxDecoration(
        color: BrColor.neutralWhite,
        boxShadow: BrShadow.def,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: BrTypo.headingH3Bold(),
          ),
          SizedBox(height: 5.w),
          Text(
            subtitle,
            style: BrTypo.bodySmallRegular(
              color: BrColor.neutralBlack04,
            ),
          ),
          SizedBox(height: 26.w),
          InkWell(
            onTap: callToActionCallback,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8).w,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.w,
                  color: BrColor.primaryDarkBlue01,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.svgs.icGlobe.path,
                    width: 24.w,
                  ),
                  SizedBox(width: 4.w),
                  Expanded(
                    child: Text(
                      callToActionText,
                      style: BrTypo.buttonBold(
                        color: BrColor.primaryDarkBlue01,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
