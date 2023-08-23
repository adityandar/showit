import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/utils/index.dart';

import '../../cubits/login_cubit.dart';

class LoginFormView extends StatelessWidget {
  const LoginFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16).w,
          child: Column(
            children: [
              const SizedBox(height: kToolbarHeight),
              Text(
                BrText.login,
                style: BrTypo.headingH1Bold(),
              ),
              SizedBox(height: 32.w),
              CmpTextField(
                label: BrText.email,
                hintText: BrText.emailHintText,
                iconPath: Assets.svgs.icMail.path,
                onChanged: context.read<LoginCubit>().onEmailChanged,
                errorText: state.loginForm.email.displayError?.text(),
              ),
              SizedBox(height: 12.w),
              CmpPasswordTextField(
                onChanged: context.read<LoginCubit>().onPasswordChanged,
                errorText: state.loginForm.password.displayError?.text(),
              ),
              SizedBox(height: 12.w),
            ],
          ),
        );
      },
    );
  }
}
