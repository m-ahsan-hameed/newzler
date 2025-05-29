import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final double borderRadius;
  final IconData? prefixIcons;
  final double width;
  final Color preIconColor;
  final bool obscureText;
  final Widget? suffixWidget;
  final double fontSize;
  final TextInputType keyboardType;
  final double? letterSpacing;
  const CustomInputField({
    super.key,
    this.controller,
    this.hintText,
    this.borderRadius = 0,
    this.prefixIcons,
    this.width = 331,
    this.preIconColor = textColor2,
    this.obscureText = false,
    this.suffixWidget,
    this.fontSize = 16,
    this.keyboardType = TextInputType.text,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          TextFormField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            cursorColor: mainColor,
            style: TextStyle(
              fontSize: fontSize,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none,
              letterSpacing: letterSpacing,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: fontSize,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
                color: textColors,
              ),
              prefixIcon: prefixIcons != null
                  ? Icon(prefixIcons, color: preIconColor)
                  : null,
              suffixIcon: suffixWidget,
              suffixIconConstraints: BoxConstraints(
                minHeight: 20,
                minWidth: 20,
              ),

              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: textColor2,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: textColor2,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: textColor2,
                ),
              ),
            ),
          ),

          // Divider(),
        ],
      ),
    );
  }
}
