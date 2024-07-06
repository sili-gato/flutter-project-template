import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/components/bold_text_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: BoldTextWidget(
          textToDisplay: "Flutter Template",
        ),
      ),
    );
  }
}
