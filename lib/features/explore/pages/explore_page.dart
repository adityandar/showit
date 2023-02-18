import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showit/common/common.dart';
import 'package:showit/features/explore/widgets/index.dart';

import '../views/index.dart';

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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              BrText.explore,
              style: BrTypo.headingH1Bold(),
            ),
          ),
          SizedBox(height: 16.w),
          const CategoryHorizontalListView(),
          SizedBox(height: 24.w),
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
