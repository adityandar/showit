import 'package:flutter/material.dart';
import 'package:showit/core/index.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/features/auth/login/cubits/login_cubit.dart';
import 'package:showit/services/services.dart';

import '../listeners/index.dart';
import 'views/index.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final cubit = LoginCubit(
    repository: getIt<AuthRepository>(),
  );

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: const BlocListener<LoginCubit, LoginState>(
        listener: LoginListener.listen,
        child: Scaffold(
          bottomNavigationBar: LoginBottomNavigationBarView(),
          body: LoginFormView(),
        ),
      ),
    );
  }
}
