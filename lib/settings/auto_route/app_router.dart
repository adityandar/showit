import 'package:showit/dependencies/dependencies.dart';

import '../../features/features.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: MainRoute.page,
      path: '/',
      children: [
        AutoRoute(page: ExploreRoute.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: MyProjectRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
    AutoRoute(page: ProjectDetailRoute.page),
  ];
}
