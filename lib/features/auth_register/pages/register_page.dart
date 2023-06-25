import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

import 'views/index.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 24).w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CmpGradientButton(
              title: BrText.next,
              padding: const EdgeInsets.symmetric(vertical: 12.5).w,
              onTap: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.decelerate,
                );
              },
            ),
            SizedBox(height: 8.w),
            CmpGradientButton(
              title: BrText.back,
              padding: const EdgeInsets.symmetric(vertical: 12.5).w,
              onTap: () {
                _pageController.previousPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.decelerate,
                );
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          RegisterFormView(),
          DetailInfoFormView(),
        ],
      ),
    );
  }
}
