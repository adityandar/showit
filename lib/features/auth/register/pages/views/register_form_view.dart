import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/utils/index.dart';

import '../../cubits/register_cubit.dart';

class RegisterFormView extends StatelessWidget {
  const RegisterFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) =>
          previous.registerForm != current.registerForm,
      builder: (context, state) {
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
                onChanged: context.read<RegisterCubit>().onUsernameChanged,
                errorText: state.registerForm.username.displayError?.text(),
              ),
              SizedBox(height: 12.w),
              CmpTextField(
                label: BrText.email,
                hintText: BrText.emailHintText,
                iconPath: Assets.svgs.icMail.path,
                onChanged: context.read<RegisterCubit>().onEmailChanged,
                errorText: state.registerForm.email.displayError?.text(),
              ),
              SizedBox(height: 12.w),
              CmpPasswordTextField(
                onChanged: context.read<RegisterCubit>().onPasswordChanged,
                errorText: state.registerForm.password.displayError?.text(),
              ),
              SizedBox(height: 12.w),
            ],
          ),
        );
      },
    );
  }
}
