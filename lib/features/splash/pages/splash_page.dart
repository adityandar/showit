import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/common/common.dart';
import 'package:showit/core/index.dart';
import 'package:showit/dependencies/dependencies.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthCubit, AuthState>(
        listener: AuthListener.listen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              Assets.illustration.imgRocketIllustration.path,
            ),
            Text(
              BrText.showItSplash,
              style: BrTypo.headingH1Bold(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.w),
            LoadingAnimationWidget.threeRotatingDots(
              color: BrColor.primaryDarkBlue01,
              size: 32.w,
            ),
          ],
        ),
      ),
    );
  }
}
