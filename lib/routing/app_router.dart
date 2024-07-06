import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../components/display_error_page.dart';
import '../routes/homePage.dart';
import '../routes/splashPage.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, path: "/splash", initial: true),
    AutoRoute(page: HomeRoute.page, path: "/home"),
  ];
}
