import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

import '../../../explore/pages/views/widgets/index.dart';
import 'index.dart';

class ProjectDetailOwnerView extends StatelessWidget {
  const ProjectDetailOwnerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16).w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            BrText.projectOwner,
            style: BrTypo.headingH2Bold(),
          ),
          SizedBox(height: 16.w),
          const ProjectOwnerInfoWidget(),
          SizedBox(height: 16.w),
          Text(
            BrText.contact,
            style: BrTypo.buttonBold(),
          ),
          SizedBox(height: 8.w),
          Row(
            children: SocialMediaType.values
                .map(
                  (type) => Padding(
                    padding: const EdgeInsets.only(right: 8).w,
                    child: CmpBaseSocialMediaIcon(
                      type: type,
                      url: '',
                    ),
                  ),
                )
                .toList(),
          ),
          CmpDivider(
            margin: const EdgeInsets.symmetric(vertical: 24).w,
          ),
          Text(
            BrText.moreByProjectOwner,
            style: BrTypo.headingH2Bold(),
          ),
          SizedBox(height: 16.w),
          ProjectItemWidget(),
          SizedBox(height: 16.w),
          ProjectItemWidget(),
          SizedBox(height: 16.w),
          ProjectItemWidget(),
          SizedBox(height: 16.w),
          ProjectItemWidget(),
          SizedBox(height: 16.w),
          ProjectItemWidget(),
          SizedBox(height: 16.w),
          ProjectItemWidget(),
          SizedBox(height: 16.w),
          ProjectItemWidget(),
          SizedBox(height: 16.w),
        ],
      ),
    );
  }
}
