import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/main_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
            Center(child: Image.asset("assets/images/welcome.png", width: 321)),
            SizedBox(height: 80),
            Text(
              "Welcome, Darrell",
              style: TextStyle(
                fontSize: 15,
                color: mainColor,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Enjoy our best news engine experience ever",
              style: TextStyle(
                color: textColors,
                fontSize: 44,
                fontWeight: FontWeight.w700,
                fontFamily: "RaleWay",
              ),
            ),
            SizedBox(height: 20),
            MainButton(
              text: "Let's Start",
              fontFamily: "Roboto",

              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => OnBoardingSlider()),
                // );
              },
              elevation: 4,
            ),
          ],
        ),
      ),
    );
  }
}
