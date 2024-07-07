import 'package:flutter/material.dart';
class AnimatedButton extends StatefulWidget {
  Widget child;
  VoidCallback? onButtonPressed;
  Color buttonColor;
  AnimatedButton(
      {super.key,
        required this.child,
        this.onButtonPressed,
        this.buttonColor = Colors.black,});
  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  double bottomPadding = 6;
  @override
  Widget build(BuildContext context) {
    Color _hslRelativeColor({double h = 0.0, s = 0.0, l = 0.0}) {
      final hslColor = HSLColor.fromColor(widget.buttonColor);
      h = (hslColor.hue + h).clamp(0.0, 360.0);
      s = (hslColor.saturation + s).clamp(0.0, 1.0);
      l = (hslColor.lightness + l).clamp(0.0, 1.0);
      return HSLColor.fromAHSL(hslColor.alpha, h, s, l).toColor();
    }
    return GestureDetector(
      onTap: () {
        widget.onButtonPressed?.call();
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
            color: _hslRelativeColor(s: -0.20, l: -0.20), borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: widget.buttonColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
