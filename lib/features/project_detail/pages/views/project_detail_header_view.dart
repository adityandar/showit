import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

import 'index.dart';

class ProjectDetailHeaderView extends StatefulWidget {
  const ProjectDetailHeaderView({
    super.key,
    required this.innerBoxIsScrolled,
    required this.tabController,
  });

  final bool innerBoxIsScrolled;
  final TabController tabController;

  @override
  State<ProjectDetailHeaderView> createState() =>
      _ProjectDetailHeaderViewState();
}

class _ProjectDetailHeaderViewState extends State<ProjectDetailHeaderView> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 284.w,
      backgroundColor: BrColor.neutralWhite,
      automaticallyImplyLeading: false,
      pinned: true,
      forceElevated: widget.innerBoxIsScrolled,
      centerTitle: false,
      foregroundColor: BrColor.neutralBlack01,
      title: const ProjectDetailHeaderTitleWidget(),
      flexibleSpace: const ProjectDetailHeaderBodyWidget(),
      bottom: TabBar(
        controller: widget.tabController,
        indicatorColor: BrColor.primaryDarkBlue01,
        indicatorWeight: 2.w,
        labelColor: BrColor.primaryDarkBlue01,
        unselectedLabelColor: BrColor.neutralGrey01,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 16.w),
        labelStyle: BrTypo.bodyMedium(),
        tabs: const [
          Tab(
            text: BrText.description,
          ),
          Tab(
            text: BrText.owner,
          ),
        ],
      ),
    );
  }
}
