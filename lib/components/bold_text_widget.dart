import 'package:flutter/material.dart';

class BoldTextWidget extends StatelessWidget{
  final String textToDisplay;
  final double fontSize;
  final Color textColor;
  final TextAlign textAlign;
  const BoldTextWidget({super.key, required this.textToDisplay, this.fontSize = 18.0, this.textColor = Colors.black, this.textAlign = TextAlign.left});
  @override
  Widget build(BuildContext context) {
    return Text(
      textToDisplay,
      style: TextStyle(
        fontFamily: 'SofiaSans',
        fontSize: fontSize,
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
      textAlign: textAlign,
    );
  }
}