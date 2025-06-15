import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';

class CommonFunctions {
  Widget notLogin(
    String text,
    VoidCallback loginOnPressed,
    VoidCallback signUpOnPresses,
    double? borderRadius,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTextStyle(
          text: text,
          size: 18.5,
          fontWeight: FontWeight.w800,
          color: textColor2,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MainButton(
              text: "Login",
              onPressed: loginOnPressed,
              buttonHeight: 60,
              buttonWidth: 145,
              borderRadius: borderRadius!,
              elevation: 4,
              fontSize: 16.5,
              borderColor: Colors.transparent,
            ),
            MainButton(
              text: "Sign Up",
              backgroundColor: Colors.transparent,
              borderWidth: 1,
              textColor: textColors,
              fontSize: 16.5,
              onPressed: signUpOnPresses,
              buttonHeight: 60,
              buttonWidth: 145,
              borderRadius: borderRadius,
              // elevation: 0,
            ),
          ],
        ),
      ],
    );
  }
}
