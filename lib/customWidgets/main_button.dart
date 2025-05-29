import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';

class MainButton extends StatelessWidget {
  final String text;
  final double elevation;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double borderRadius;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final Color elevationColor;
  final IconData? leadingIcon;
  final Color? iconColor;
  final double iconSize;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final double? buttonHeight;
  final double borderWidth;
  final double? buttonWidth;
  final Color borderColor;
  final Widget spinnerWidget;
  final bool isLoading;
  const MainButton({
    super.key,
    required this.text,
    this.elevation = 0,
    this.backgroundColor = mainColor,
    this.textColor = Colors.white,
    required this.onPressed,
    this.borderRadius = 20,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w700,
    this.fontFamily = "Raleway",
    this.elevationColor = mainColor,
    this.leadingIcon,
    this.iconColor,
    this.iconSize = 25,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.min,
    this.buttonHeight,
    this.borderWidth = 0,
    this.borderColor = textColor2,
    this.buttonWidth,
    this.spinnerWidget = const SizedBox(),
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: elevation,
          shadowColor: buttonElevationColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(width: borderWidth, color: borderColor),
          ),
          textStyle: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
          ),
        ),

        child: Row(
          mainAxisSize: mainAxisSize,
          mainAxisAlignment: mainAxisAlignment,
          children: [
            if (leadingIcon != null) ...[
              Icon(leadingIcon, color: iconColor, size: iconSize),
              const SizedBox(width: 8),
            ],
            isLoading ? spinnerWidget : Text(text),
          ],
        ),
      ),
    );
  }
}
