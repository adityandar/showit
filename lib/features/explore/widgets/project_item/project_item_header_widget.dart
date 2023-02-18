import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showit/common/common.dart';

import 'index.dart';

class ProjectItemHeaderWidget extends StatelessWidget {
  const ProjectItemHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProjectIconWidget(
          url:
              'https://1000logos.net/wp-content/uploads/2022/12/Punjab-Police-Logo-500x281.png',
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ColouPaint',
                style: BrTypo.headingH3Bold(),
              ),
              SizedBox(height: 10.w),
              Row(
                children: [
                  Text(
                    'Website',
                    style: BrTypo.bodySmallRegular(
                      color: BrColor.neutralBlack03,
                    ),
                  ),
                  Container(
                    width: 4.w,
                    height: 4.w,
                    margin: EdgeInsets.symmetric(horizontal: 6.w),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: BrColor.neutralGrey04,
                    ),
                  ),
                  Text(
                    'Lifestyle',
                    style: BrTypo.bodySmallRegular(
                      color: BrColor.primaryDarkBlue02,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
