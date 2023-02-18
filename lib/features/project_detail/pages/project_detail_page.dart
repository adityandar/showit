import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

import 'index.dart';

class ProjectDetailPage extends StatefulWidget {
  const ProjectDetailPage({super.key});

  @override
  State<ProjectDetailPage> createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends State<ProjectDetailPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrColor.neutralWhite,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          ProjectDetailHeaderView(
            innerBoxIsScrolled: innerBoxIsScrolled,
            tabController: _tabController,
          ),
        ],
        body: ListView.builder(
          padding: EdgeInsets.only(top: 32.w),
          itemBuilder: (context, index) => Container(
            color: index % 2 == 0 ? Colors.blue : Colors.red,
            child: Text(
              'Text $index',
            ),
          ),
        ),
      ),
    );
  }
}
