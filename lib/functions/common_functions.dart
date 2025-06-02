import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';

class CommonFunctions {
  Widget notLogin(
    String text,
    VoidCallback loginOnPressed,
    VoidCallback signUpOnPresses,
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
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MainButton(
              text: "Login",
              onPressed: loginOnPressed,
              buttonHeight: 50,
              buttonWidth: 145,
              borderRadius: 50,
              elevation: 4,
              fontSize: 16.5,
            ),
            MainButton(
              text: "Sign Up",
              backgroundColor: Colors.transparent,
              borderWidth: 2,
              textColor: textColors,
              fontSize: 16.5,
              onPressed: signUpOnPresses,
              buttonHeight: 50,
              buttonWidth: 145,
              borderRadius: 50,
              // elevation: 0,
            ),
          ],
        ),
      ],
    );
  }
}
