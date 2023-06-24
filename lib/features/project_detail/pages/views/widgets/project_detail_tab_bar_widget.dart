import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class ProjectDetailTabBarWidget extends StatelessWidget {
  const ProjectDetailTabBarWidget({
    super.key,
    required this.tabController,
    required this.scrollController,
  });

  final TabController tabController;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrColor.neutralWhite,
      child: TabBar(
        controller: tabController,
        indicatorColor: BrColor.primaryDarkBlue01,
        indicatorWeight: 2.w,
        labelColor: BrColor.primaryDarkBlue01,
        unselectedLabelColor: BrColor.neutralGrey01,
        indicatorPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        labelStyle: BrTypo.bodyMedium(),
        tabs: const [
          Tab(
            text: BrText.description,
          ),
          Tab(
            text: BrText.owner,
          ),
        ],
        onTap: (_) {
          scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.decelerate,
          );
        },
      ),
    );
  }
}
