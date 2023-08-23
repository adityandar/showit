import 'package:flutter/material.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/settings/settings.dart';

import 'core/index.dart';

class ShowitApp extends StatelessWidget {
  ShowitApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return BlocProvider(
          create: (_) => AuthCubit(
            repository: AuthRepositoryImpl(),
          )..checkLoggedInStatus(),
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Inter',
            ),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          ),
        );
      },
    );
  }
}
