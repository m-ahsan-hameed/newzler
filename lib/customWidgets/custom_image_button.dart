import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String imageData;
  final double width;
  final double height;
  final double borderRadius;
  final double imageWidth;
  final double imageHeight;
  const CustomImageButton({
    super.key,
    required this.onPressed,
    required this.imageData,
    this.width = 96,
    this.height = 59,
    this.borderRadius = 30,
    this.imageWidth = 31,
    this.imageHeight = 31,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: BoxBorder.all(width: 1, color: Color(0XFFCCCCCC)),
        ),
        child: Center(
          child: Image.asset(imageData, width: imageWidth, height: imageHeight),
        ),
      ),
    );
  }
}
