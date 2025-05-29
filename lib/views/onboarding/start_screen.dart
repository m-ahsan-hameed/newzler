import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';
import 'package:newzler/views/onboarding/on_boarding_slider.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset("assets/images/onboarding1.png", width: 200),
            ),
            SizedBox(height: 80),
            CustomTextStyle(
              text: "Discover Daily News",
              size: 15,
              color: mainColor,
            ),

            SizedBox(height: 20),
            CustomTextStyle(
              text: "We Bring you Closer to the news",
              size: 44,
              fontWeight: FontWeight.w600,
            ),

            SizedBox(height: 20),
            MainButton(
              text: "Get Started",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnBoardingSlider()),
                );
              },
              elevation: 4,
            ),
          ],
        ),
      ),
    );
  }
}
