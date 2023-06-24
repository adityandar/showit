import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class ProjectDetailHeaderTitleWidget extends StatelessWidget {
  const ProjectDetailHeaderTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CmpIconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: BrColor.neutralBlack01,
              size: 24.w,
            ),
            onTap: context.popRoute,
          ),
          Text(
            BrText.detailProject,
            style: BrTypo.headingH3Regular(),
          ),
          CmpIconButton(
            icon: Icon(
              Icons.share_outlined,
              size: 24.w,
            ),
            // TODO(adityandar): implement share
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
