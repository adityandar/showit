import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

import '../../cubits/register_cubit.dart';

class RegisterBottomNavigationBarView extends StatelessWidget {
  const RegisterBottomNavigationBarView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 24).w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (state.isLastStep) ...[
                CmpGradientButton(
                  title: BrText.submit,
                  padding: const EdgeInsets.symmetric(vertical: 12.5).w,
                  isLoading: state.registerState.isLoading,
                  onTap: state.personalInfoForm.isValid
                      ? () {
                          context.read<RegisterCubit>().submitCreateAccount();
                        }
                      : null,
                ),
              ] else ...[
                CmpGradientButton(
                  title: BrText.next,
                  padding: const EdgeInsets.symmetric(vertical: 12.5).w,
                  isLoading: state.registerState.isLoading,
                  onTap: state.registerForm.isValid
                      ? () {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.decelerate,
                          );
                        }
                      : null,
                ),
              ],
              SizedBox(height: 8.w),
              CmpGradientButton(
                title: BrText.back,
                padding: const EdgeInsets.symmetric(vertical: 12.5).w,
                onTap: () {
                  if ((pageController.page ?? 0) != 0) {
                    pageController.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.decelerate,
                    );
                  } else {
                    context.router.pop();
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
