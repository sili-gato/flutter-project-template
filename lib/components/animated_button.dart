import 'package:flutter/material.dart';
import 'package:flutter_template/components/regular_text_widget.dart';
import '../constants/app_colors.dart';

class AnimatedButton extends StatefulWidget {
  String buttonText;
  VoidCallback? onButtonPressed;
  Color buttonColor;
  Color textColor;
  AnimatedButton(
      {super.key,
      required this.buttonText,
      this.onButtonPressed,
      this.buttonColor = Colors.black,
      this.textColor = AppColors.mainTextColor1});
  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  double bottomPadding = 6;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onButtonPressed;
      },
      onTapDown: (value) => setState(() {
        bottomPadding = 0;
      }),
      onTapUp: (value) => setState(() {
        bottomPadding = 6;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: EdgeInsets.only(bottom: bottomPadding),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: widget.buttonColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: RegularTextWidget(
            textToDisplay: widget.buttonText,
            textColor: widget.textColor,
          ),
        ),
      ),
    );
  }
}
