import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';

import '../../../dependencies/dependencies.dart';
import 'index.dart';

@RoutePage()
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
        body: ScrollablePositionedList.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
              height: 500.w,
              width: 1.sw,
              color: index == 0 ? Colors.red : Colors.blue,
            );
          },
        ),
      ),
    );
  }
}
