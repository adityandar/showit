import 'package:flutter/material.dart';
import 'package:showit/dependencies/dependencies.dart';

import '../../features/features.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthLoginPage, initial: true),
    AutoRoute(
      page: MainPage,
      children: [
        AutoRoute(page: ExplorePage),
        AutoRoute(page: SearchPage),
        AutoRoute(page: MyProjectPage),
        AutoRoute(page: ProfilePage),
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
