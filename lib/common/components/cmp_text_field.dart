import 'package:flutter/material.dart';
import 'package:showit/dependencies/dependencies.dart';

import '../common.dart';

class CmpTextField extends StatelessWidget {
  const CmpTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.iconPath,
    required this.onChanged,
    this.errorText,
  });

  final String label;
  final String hintText;
  final String? iconPath;
  final ValueChanged<String> onChanged;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: BrTypo.subtitleLarge(),
        ),
        SizedBox(height: 8.w),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ).w,
          decoration: BoxDecoration(
            color: BrColor.neutralGrey05,
            borderRadius: BorderRadius.circular(60.r),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (iconPath?.isNotEmpty ?? false) ...[
                SvgPicture.asset(
                  iconPath!,
                  width: 20.w,
                  colorFilter: const ColorFilter.mode(
                    BrColor.neutralBlack04,
                    BlendMode.srcIn,
                  ),
                ),
              ],
              SizedBox(width: 4.w),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: BrTypo.bodySmallRegular(
                      color: BrColor.neutralBlack05,
                    ),
                  ),
                  style: BrTypo.bodySmallRegular(
                    color: BrColor.neutralBlack02,
                  ),
                  onChanged: onChanged,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.w),
        Text(
          errorText ?? '',
          style: BrTypo.bodySmallRegular(
            color: BrColor.tertiaryError,
          ),
        ),
      ],
    );
  }
}
