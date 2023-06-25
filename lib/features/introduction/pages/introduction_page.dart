import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/settings/settings.dart';

@RoutePage()
class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 48.h),
            CmpGradientButton(
              title: BrText.login,
              svgPath: Assets.svgs.icLogin.path,
              padding: const EdgeInsets.symmetric(vertical: 12.5).w,
              onTap: () {
                context.router.push(
                  const LoginRoute(),
                );
              },
            ),
            SizedBox(height: 16.h),
            CmpGradientButton(
              title: BrText.register,
              svgPath: Assets.svgs.icRegister.path,
              padding: const EdgeInsets.symmetric(vertical: 12.5).w,
              onTap: () {
                context.router.push(
                  const RegisterRoute(),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16).w,
        child: Column(
          children: [
            SizedBox(height: kToolbarHeight + 32.h),
            Image.asset(
              Assets.illustration.imgRocketIllustration.path,
              width: 1.sw - 32.w,
            ),
            SizedBox(height: 32.h),
            Text(
              BrText.introductionTitle,
              style: BrTypo.headingH2Bold(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8).w,
              child: Text(
                BrText.introductionSubtitle,
                style: BrTypo.bodySmallMedium(color: BrColor.neutralBlack03),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
