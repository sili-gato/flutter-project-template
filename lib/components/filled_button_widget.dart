import 'package:flutter/material.dart';
import 'package:flutter_template/components/regular_text_widget.dart';


class FilledButtonWidget extends StatelessWidget{
  String buttonText;
  VoidCallback? onButtonPressed;
  Color buttonColor;
  bool isDisabled;
  Color textColor;
  FilledButtonWidget({super.key, required this.buttonText, this.onButtonPressed, this.buttonColor = Colors.black, this.isDisabled = false, this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)
            )
        ),
        backgroundColor: MaterialStateProperty.all<Color>(isDisabled ? Colors.grey : buttonColor),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // text color
        textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
                color: textColor
            )
        ),

      ),
      onPressed: (){
        if(onButtonPressed != null){
          onButtonPressed!();
        }
      },
      child: RegularTextWidget(
          textToDisplay: buttonText,
          textColor: textColor
      ),
    );
  }

}