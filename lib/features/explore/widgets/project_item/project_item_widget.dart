import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/settings/auto_route/app_router.dart';

import 'index.dart';

class ProjectItemWidget extends StatelessWidget {
  const ProjectItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(const ProjectDetailRoute());
      },
      child: Container(
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
      ),
    );
  }
}
