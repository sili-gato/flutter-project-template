import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  Widget child;
  VoidCallback? onButtonPressed;
  Color buttonColor;
  double height;
  double width;
  AnimatedButton({
    super.key,
    required this.child,
    this.onButtonPressed,
    this.buttonColor = Colors.black,
    required this.width,
    required this.height
  });
  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  final double _shadowHeight = 4;
  double _position = 6;
  Color _hslRelativeColor({double h = 0.0, s = 0.0, l = 0.0}) {
    final hslColor = HSLColor.fromColor(widget.buttonColor);
    h = (hslColor.hue + h).clamp(0.0, 360.0);
    s = (hslColor.saturation + s).clamp(0.0, 1.0);
    l = (hslColor.lightness + l).clamp(0.0, 1.0);
    return HSLColor.fromAHSL(hslColor.alpha, h, s, l).toColor();
  }
  @override
  Widget build(BuildContext context) {
    final double height = widget.height - _shadowHeight;
    return GestureDetector(
      onTap: (){
        widget.onButtonPressed?.call();
      },
      onTapUp: (_) {
        setState(() {
          _position = 6;
        });
      },
      onTapDown: (_) {
        setState(() {
          _position = 0;
        });
      },
      onTapCancel: () {
        setState(() {
          _position = 6;
        });
      },
      child: SizedBox(
        height: height + _shadowHeight+2,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: height,
                width: widget.width,
                decoration: BoxDecoration(
                    color: _hslRelativeColor(s: -0.20, l: -0.20),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            AnimatedPositioned(
              curve: Curves.easeIn,
              bottom: _position,
              duration: const Duration(milliseconds: 150),
              child: Container(
                  height: height,
                  width: widget.width,
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  decoration: BoxDecoration(
                      color: widget.buttonColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: widget.child
              ),
            ),
          ],
        ),
      ),
    );
  }
}
