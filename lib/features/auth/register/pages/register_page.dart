import 'package:flutter/material.dart';
import 'package:showit/core/index.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/services/services.dart';

import '../cubits/register_cubit.dart';
import '../listeners/index.dart';
import 'views/index.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _pageController = PageController();
  final cubit = RegisterCubit(
    repository: getIt<AuthRepository>(),
  );

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      cubit.onPageChanged((_pageController.page ?? 0).toInt());
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: BlocListener<RegisterCubit, RegisterState>(
        listener: RegisterListener.listen,
        child: Scaffold(
          bottomNavigationBar: RegisterBottomNavigationBarView(
            pageController: _pageController,
          ),
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              RegisterFormView(),
              DetailInfoFormView(),
            ],
          ),
        ),
      ),
    );
  }
}
