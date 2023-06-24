import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class CmpDivider extends StatelessWidget {
  const CmpDivider({
    super.key,
    this.margin,
  });

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.w,
      width: 1.sw,
      margin: margin,
      color: BrColor.neutralGrey05,
    );
  }
}
