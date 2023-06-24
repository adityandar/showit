import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showit/common/common.dart';

class CmpProjectIcon extends StatelessWidget {
  const CmpProjectIcon({
    Key? key,
    required this.url,
    this.size,
    this.radius,
  }) : super(key: key);

  final String url;
  final double? size;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CmpCustomImage(
      url: url,
      width: size ?? 45.w,
      customBoxDecoration: BoxDecoration(
        border: Border.all(
          color: BrColor.neutralGrey05,
        ),
        borderRadius: BorderRadius.circular(radius ?? 6.r),
      ),
    );
  }
}
