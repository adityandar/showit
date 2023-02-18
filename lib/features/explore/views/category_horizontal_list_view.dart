import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showit/common/common.dart';

import '../widgets/index.dart';

class CategoryHorizontalListView extends StatelessWidget {
  const CategoryHorizontalListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 16.w),
          CategoryItemWidget(
            text: BrText.lifestyle,
            isActive: true,
            onTap: () {},
          ),
          CategoryItemWidget(
            text: BrText.education,
            isActive: false,
            onTap: () {},
          ),
          CategoryItemWidget(
            text: BrText.health,
            isActive: false,
            onTap: () {},
          ),
          CategoryItemWidget(
            text: BrText.foodDrinks,
            isActive: false,
            onTap: () {},
          ),
          CategoryItemWidget(
            text: BrText.health,
            isActive: false,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
