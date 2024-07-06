import 'package:flutter/material.dart';

class RegularTextWidget extends StatelessWidget{
  String textToDisplay;
  double fontSize;
  Color textColor;
  TextAlign textAlign;
  TextDecoration? textdecoration;
  RegularTextWidget({super.key, required this.textToDisplay, this.fontSize = 14.0, this.textColor = Colors.black, this.textAlign = TextAlign.center, this.textdecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      textToDisplay,
      style: TextStyle(
          fontFamily: 'SofiaSans',
          fontSize: fontSize,
          color: textColor,
          decoration: textdecoration
      ),

      textAlign: textAlign,
    );
  }

}