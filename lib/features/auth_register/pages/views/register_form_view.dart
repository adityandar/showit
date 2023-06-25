import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class RegisterFormView extends StatelessWidget {
  const RegisterFormView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16).w,
      child: Column(
        children: [
          const SizedBox(height: kToolbarHeight),
          Text(
            BrText.register,
            style: BrTypo.headingH1Bold(),
          ),
          SizedBox(height: 32.w),
          CmpTextField(
            label: BrText.username,
            hintText: BrText.usernameHintText,
            iconPath: Assets.svgs.icProfile.path,
            onChanged: (val) {},
          ),
          SizedBox(height: 12.w),
          CmpTextField(
            label: BrText.email,
            hintText: BrText.emailHintText,
            iconPath: Assets.svgs.icMail.path,
            onChanged: (val) {},
          ),
          SizedBox(height: 12.w),
          CmpPasswordTextField(
            onChanged: (val) {},
          ),
          SizedBox(height: 12.w),
        ],
      ),
    );
  }
}
