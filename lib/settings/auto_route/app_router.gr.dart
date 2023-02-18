// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthLoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AuthLoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    ExploreRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ExplorePage(),
      );
    },
    SearchRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SearchPage(),
      );
    },
    MyProjectRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MyProjectPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          AuthLoginRoute.name,
          path: '/',
        ),
        RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            RouteConfig(
              ExploreRoute.name,
              path: 'explore-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              SearchRoute.name,
              path: 'search-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              MyProjectRoute.name,
              path: 'my-project-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: MainRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [AuthLoginPage]
class AuthLoginRoute extends PageRouteInfo<void> {
  const AuthLoginRoute()
      : super(
          AuthLoginRoute.name,
          path: '/',
        );

  static const String name = 'AuthLoginRoute';
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main-page',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [ExplorePage]
class ExploreRoute extends PageRouteInfo<void> {
  const ExploreRoute()
      : super(
          ExploreRoute.name,
          path: 'explore-page',
        );

  static const String name = 'ExploreRoute';
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: 'search-page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [MyProjectPage]
class MyProjectRoute extends PageRouteInfo<void> {
  const MyProjectRoute()
      : super(
          MyProjectRoute.name,
          path: 'my-project-page',
        );

  static const String name = 'MyProjectRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}
