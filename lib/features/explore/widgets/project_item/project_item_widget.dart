import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showit/common/common.dart';

import 'index.dart';

class ProjectItemWidget extends StatelessWidget {
  const ProjectItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        boxShadow: BrShadow.def,
        color: BrColor.neutralWhite,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ProjectItemHeaderWidget(),
          ProjectItemBodyWidget(),
          ProjectItemFooterWidget(),
        ],
      ),
    );
  }
}
