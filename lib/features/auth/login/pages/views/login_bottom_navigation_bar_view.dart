import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

import '../../cubits/login_cubit.dart';

class LoginBottomNavigationBarView extends StatelessWidget {
  const LoginBottomNavigationBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 24).w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CmpGradientButton(
                title: BrText.submit,
                padding: const EdgeInsets.symmetric(vertical: 12.5).w,
                isLoading: state.loginState.isLoading,
                onTap: state.loginForm.isValid
                    ? () {
                        context.read<LoginCubit>().submitLogin();
                      }
                    : null,
              ),
              SizedBox(height: 8.w),
              CmpGradientButton(
                title: BrText.back,
                padding: const EdgeInsets.symmetric(vertical: 12.5).w,
                onTap: () {
                  context.router.pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
