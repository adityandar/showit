import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

import 'index.dart';

class ProjectDetailDescriptionView extends StatelessWidget {
  const ProjectDetailDescriptionView({super.key});

  double get imageWidth => (1.sw - (16.w * 3)) / 2;
  double get imageHeight => 0.7.sw;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16).w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            BrText.aboutTheProject,
            style: BrTypo.headingH2Bold(),
          ),
          SizedBox(height: 16.w),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 12.w,
            children: [
              CmpCustomImage(
                url:
                    'https://randomwordgenerator.com/img/picture-generator/54e7d6404c52af14f1dc8460962e33791c3ad6e04e50744172277fd79048cd_640.jpg',
                borderRadius: BorderRadius.circular(8.r),
                width: imageWidth,
                height: imageHeight,
              ),
              CmpCustomImage(
                url:
                    'https://randomwordgenerator.com/img/picture-generator/54e7d6404c52af14f1dc8460962e33791c3ad6e04e50744172277fd79048cd_640.jpg',
                borderRadius: BorderRadius.circular(8.r),
                width: imageWidth,
                height: imageHeight,
              ),
              CmpCustomImage(
                url:
                    'https://randomwordgenerator.com/img/picture-generator/54e7d6404c52af14f1dc8460962e33791c3ad6e04e50744172277fd79048cd_640.jpg',
                borderRadius: BorderRadius.circular(8.r),
                width: imageWidth,
                height: imageHeight,
              ),
              CmpCustomImage(
                url:
                    'https://randomwordgenerator.com/img/picture-generator/54e7d6404c52af14f1dc8460962e33791c3ad6e04e50744172277fd79048cd_640.jpg',
                borderRadius: BorderRadius.circular(8.r),
                width: imageWidth,
                height: imageHeight,
              ),
            ],
          ),
          SizedBox(height: 14.w),
          Text(
            'Augue rhoncus sodales arcu mauris id turpis gravida nunc. In ipsum, cursus quis lacus, id egestas luctus lacus. Lacus auctor orci ut orci vitae enim eu facilisis nisi. Lobortis urna, est sed imperdiet malesuada placerat. Cursus mi aliquam fermentum, ac porttitor arcu risus viverra. Odio aenean aliquet ut odio nulla. ',
            style: BrTypo.bodyRegular(
              color: BrColor.neutralBlack02,
            ),
          ),
          CmpDivider(
            margin: const EdgeInsets.symmetric(vertical: 24).w,
          ),
          Row(
            children: [
              Expanded(
                child: ProjectCTAWidget(
                  title: BrText.thisProjectIsPublished,
                  subtitle: BrText.youCanAccessAndViewTheProject,
                  callToActionText: BrText.viewLive,
                  callToActionCallback: () {},
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Expanded(
                child: ProjectCTAWidget(
                  title: BrText.iWantToContribute,
                  subtitle: BrText.youCanContributeToThisProject,
                  callToActionText: BrText.contribute,
                  callToActionCallback: () {
                    print('a');
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 32.w),
        ],
      ),
    );
  }
}
