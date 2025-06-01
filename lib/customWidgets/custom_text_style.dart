import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';

class CustomTextStyle extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final TextAlign? textAlign;
  final FontWeight fontWeight;
  final String fontFamily;
  final double? lineHeight;
  const CustomTextStyle({
    super.key,
    required this.text,
    this.color = textColors,
    this.size = 28,
    this.textAlign,
    this.fontWeight = FontWeight.w700,
    this.fontFamily = "Raleway",
    this.lineHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: TextStyle(
        height: lineHeight,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }
}
