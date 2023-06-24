import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class ProjectDetailHeaderTitleWidget extends StatelessWidget {
  const ProjectDetailHeaderTitleWidget({
    super.key,
    required this.isDetailHeaderBodyHidden,
  });

  final bool isDetailHeaderBodyHidden;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrColor.neutralWhite,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
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
            isDetailHeaderBodyHidden ? 'Art Enthusiast' : BrText.detailProject,
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
