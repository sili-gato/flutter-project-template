import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class DisplayErrorPage extends StatelessWidget {
  String? errorMessage;

  DisplayErrorPage({super.key, this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/logo.png", width: 250, height: 250),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Axon",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "SofiaSans",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Lottie.asset("assets/animations/error_animation_cat.json",
                    width: 250, height: 250),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  errorMessage ?? "Something went wrong",
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                TextButton(
                    onPressed: () {
                      context.router.popForced();
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.arrow_left,
                          color: Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Go Back",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}