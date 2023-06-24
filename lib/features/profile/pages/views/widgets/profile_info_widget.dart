import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({
    super.key,
    required this.title,
    required this.amount,
  });

  final String title;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16).w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: BrColor.neutralGrey05,
          border: Border.all(
            color: BrColor.neutralBlack05.withOpacity(0.5),
            width: 1.w,
          ),
        ),
        child: Column(
          children: [
            Text(
              '$amount',
              style: BrTypo.headingH3Bold(color: BrColor.neutralBlack02),
            ),
            SizedBox(height: 8.w),
            Text(
              title,
              style: BrTypo.captionMedium(color: BrColor.neutralBlack03),
            ),
          ],
        ),
      ),
    );
  }
}
