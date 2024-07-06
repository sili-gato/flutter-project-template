// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DisplayErrorRoute.name: (routeData) {
      final args = routeData.argsAs<DisplayErrorRouteArgs>(
          orElse: () => const DisplayErrorRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DisplayErrorPage(
          key: args.key,
          errorMessage: args.errorMessage,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [DisplayErrorPage]
class DisplayErrorRoute extends PageRouteInfo<DisplayErrorRouteArgs> {
  DisplayErrorRoute({
    Key? key,
    String? errorMessage,
    List<PageRouteInfo>? children,
  }) : super(
          DisplayErrorRoute.name,
          args: DisplayErrorRouteArgs(
            key: key,
            errorMessage: errorMessage,
          ),
          initialChildren: children,
        );

  static const String name = 'DisplayErrorRoute';

  static const PageInfo<DisplayErrorRouteArgs> page =
      PageInfo<DisplayErrorRouteArgs>(name);
}

class DisplayErrorRouteArgs {
  const DisplayErrorRouteArgs({
    this.key,
    this.errorMessage,
  });

  final Key? key;

  final String? errorMessage;

  @override
  String toString() {
    return 'DisplayErrorRouteArgs{key: $key, errorMessage: $errorMessage}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
