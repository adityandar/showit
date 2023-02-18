import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showit/common/common.dart';

class ProjectIconWidget extends StatelessWidget {
  const ProjectIconWidget({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return CustomImage(
      url: url,
      width: 45.w,
      customBoxDecoration: BoxDecoration(
        border: Border.all(
          color: BrColor.neutralGrey05,
        ),
        borderRadius: BorderRadius.circular(6.r),
      ),
    );
  }
}
