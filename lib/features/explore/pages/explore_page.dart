import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import 'views/index.dart';

@RoutePage()
class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: kToolbarHeight + 5.w),
          const ExploreSearchAndFilterView(),
          SizedBox(height: 16.w),
          // const CategoryHorizontalListView(),
          // SizedBox(height: 24.w),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
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
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
