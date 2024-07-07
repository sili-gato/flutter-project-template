import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/routing/app_router.dart';

import '../constants/app_constants.dart';

@RoutePage()
class SplashPage extends StatefulWidget{
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> {

  @override
  void initState() {
    startNextScreen();
    super.initState();
  }

  Future<void> startNextScreen() async{
    Timer(const Duration(seconds: AppConstants.kSplashTimer), () async{
      context.router.navigate(const HomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 250, width: 250, child: Image.asset("assets/images/template_icon.png"),),
                const Text(
                  AppConstants.kAppName,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "SofiaSans",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}