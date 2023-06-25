import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/dependencies/dependencies.dart';

import '../common.dart';

class CmpPasswordTextField extends StatefulWidget {
  const CmpPasswordTextField({
    super.key,
    required this.onChanged,
    this.errorText,
  });
  final ValueChanged<String> onChanged;
  final String? errorText;

  @override
  State<CmpPasswordTextField> createState() => _CmpPasswordTextFieldState();
}

class _CmpPasswordTextFieldState extends State<CmpPasswordTextField> {
  var _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          BrText.password,
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
              SvgPicture.asset(
                Assets.svgs.icPassword.path,
                width: 20.w,
                colorFilter: const ColorFilter.mode(
                  BrColor.neutralBlack04,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: TextField(
                  obscureText: _isObscured,
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: BrText.passwordHintText,
                    hintStyle: BrTypo.bodySmallRegular(
                      color: BrColor.neutralBlack05,
                    ),
                  ),
                  style: BrTypo.bodySmallRegular(
                    color: BrColor.neutralBlack02,
                  ),
                  onChanged: widget.onChanged,
                ),
              ),
              SizedBox(width: 4.w),
              InkWell(
                onTap: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
                child: SvgPicture.asset(
                  _isObscured
                      ? Assets.svgs.icVisibility.path
                      : Assets.svgs.icVisibilityOff.path,
                  width: 20.w,
                  colorFilter: const ColorFilter.mode(
                    BrColor.neutralBlack04,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.w),
        Text(
          widget.errorText ?? '',
          style: BrTypo.bodySmallRegular(
            color: BrColor.tertiaryError,
          ),
        ),
      ],
    );
  }
}
