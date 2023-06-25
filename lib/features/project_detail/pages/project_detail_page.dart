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
  final _scrollController = ScrollController();
  final _currentIndex = ValueNotifier(0);
  final _isDetailHeaderBodyHidden = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      _currentIndex.value = _tabController.index;
    });
    _scrollController.addListener(() {
      _isDetailHeaderBodyHidden.value = _scrollController.position.pixels > 140;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    _currentIndex.dispose();
    _isDetailHeaderBodyHidden.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrColor.neutralWhite,
      body: Padding(
        padding: const EdgeInsets.only(top: kToolbarHeight),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverStickyHeader(
              header: ValueListenableBuilder(
                valueListenable: _isDetailHeaderBodyHidden,
                builder: (context, isDetailHeaderBodyHidden, _) {
                  return ProjectDetailHeaderTitleWidget(
                    isDetailHeaderBodyHidden: isDetailHeaderBodyHidden,
                  );
                },
              ),
              sliver: MultiSliver(
                children: [
                  const ProjectDetailHeaderBodyWidget(),
                  SliverStickyHeader(
                    header: ProjectDetailTabBarWidget(
                      tabController: _tabController,
                      scrollController: _scrollController,
                    ),
                    sliver: SliverToBoxAdapter(
                      child: ValueListenableBuilder(
                        valueListenable: _currentIndex,
                        builder: (context, index, _) {
                          if (index == 1) {
                            return const ProjectDetailOwnerView();
                          }

                          return const ProjectDetailDescriptionView();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
