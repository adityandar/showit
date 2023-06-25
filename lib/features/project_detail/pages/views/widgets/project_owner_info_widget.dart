import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class ProjectOwnerInfoWidget extends StatelessWidget {
  const ProjectOwnerInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CmpCustomImage(
          url:
              'https://randomwordgenerator.com/img/picture-generator/g0ee1f063b7f5f6c5c221f8d5598be643b7715353c5ea0aaeb65b5fda50c7fbdff897d82d1b7349d5c26c4ce7e635e7fd_640.jpg',
          width: 60.w,
          isCircle: true,
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Geoffery Mott',
                style: BrTypo.headingH3Regular(),
                textAlign: TextAlign.left,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8.w),
              Container(
                // alignment: Alignment.center,
                // width: 94.w,
                padding: const EdgeInsets.symmetric(
                  vertical: 3.5,
                  horizontal: 8,
                ).w,
                decoration: BoxDecoration(
                  color: BrColor.primaryLightBlue03,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Text(
                  BrText.openToWork,
                  style: BrTypo.captionRegular(
                    color: BrColor.primaryDarkBlue02,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 4.w),
        CmpGradientButton(
          title: BrText.hire,
          svgPath: Assets.svgs.icMail.path,
          onTap: () {},
        ),
      ],
    );
  }
}
