import 'package:flutter/material.dart';
import 'package:flutter_template/routing/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(0, 0, 0, 1)),
        useMaterial3: true,
        fontFamily: 'SofiaSans',
      ),
      builder: (BuildContext context, Widget? router){
        return router!;
      },
    );
  }
}
