import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/n.png", width: 200)),
          SizedBox(height: 60),
          CustomTextStyle(
            text: "Newzler",
            size: 41,

            fontWeight: FontWeight.w600,
          ),

          SizedBox(height: 150),
          CircularProgressIndicator(color: mainColor),
        ],
      ),
    );
  }
}
