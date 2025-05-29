// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_image_button.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';
import 'package:newzler/models/on_boarding.dart';
import 'package:newzler/views/onboarding/welcome_screen.dart';
import 'package:newzler/views/validation/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingSlider extends StatelessWidget {
  OnBoardingSlider({super.key});

  PageController onBoardingPageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Expanded(
              child: PageView.builder(
                controller: onBoardingPageController,
                itemCount: onBoardingList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WelcomeScreen(),
                                ),
                              );
                            },
                            child: CustomTextStyle(
                              text: "Skip",
                              size: 14,
                              color: textColor2,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        onBoardingList[index].imagePath,
                        width: 290,
                        height: 285,
                      ),
                      SizedBox(height: 60),
                      CustomTextStyle(
                        text: onBoardingList[index].text,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  );
                },
              ),
            ),

            SmoothPageIndicator(
              controller: onBoardingPageController,
              count: onBoardingList.length,
              effect: ExpandingDotsEffect(activeDotColor: mainColor),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: MainButton(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                leadingIcon: Icon(FontAwesomeIcons.solidEnvelope),
                fontSize: 20,
                fontWeight: FontWeight.w700,
                text: "Continue With Email",
                backgroundColor: Colors.black,
                buttonHeight: 57,
                borderRadius: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            // Icon Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomImageButton(
                  imageData: "assets/images/facebook.png",
                  onPressed: () {},
                ),
                CustomImageButton(
                  imageData: "assets/images/google.png",
                  onPressed: () {},
                ),
                CustomImageButton(
                  imageData: "assets/images/twitter.png",
                  onPressed: () {},
                ),
              ],
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
