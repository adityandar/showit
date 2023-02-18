import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class ProjectDetailHeaderBodyWidget extends StatelessWidget {
  const ProjectDetailHeaderBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.parallax,
      background: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: kToolbarHeight + 38.w),
          SizedBox(height: 16.w),
          ProjectIcon(
            url:
                'https://1000logos.net/wp-content/uploads/2023/02/Indian-Army-Logo-500x281.png',
            size: 80.w,
          ),
          SizedBox(height: 16.w),
          Text(
            'Art Enthusiast',
            style: BrTypo.headingH3Bold(),
          ),
          SizedBox(height: 6.w),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'iOS',
                  style: BrTypo.bodySmallRegular(),
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Container(
                    width: 4.w,
                    height: 4.w,
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    decoration: const BoxDecoration(
                      color: BrColor.neutralGrey02,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                TextSpan(
                  text: 'Boxing',
                  style: BrTypo.bodySmallRegular(
                    color: BrColor.primaryDarkBlue02,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.w),
          Text(
            'Released June, 21 2022',
            style: BrTypo.captionRegular(color: BrColor.neutralBlack05),
          ),
        ],
      ),
    );
  }
}
