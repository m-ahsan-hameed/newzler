import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final FontWeight fontWeight;
  final Color textColor;
  final double size;
  final String fontFamily;
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontWeight = FontWeight.w700,
    this.textColor = textColors,
    this.size = 14,
    this.fontFamily = "Raleway",
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: Size(0, 0),

        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: size,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
