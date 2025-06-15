import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';

class Maintenance extends StatelessWidget {
  const Maintenance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/update.png",
                  width: 390,
                  height: 392,
                ),
              ),
              SizedBox(height: 70),
              CustomTextStyle(
                text: "Newzler In Maintenance",
                size: 24,
                fontWeight: FontWeight.w700,
                color: textColors,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              CustomTextStyle(
                text:
                    "We apologies for any inconvenience. we will be right back",
                size: 16,
                fontWeight: FontWeight.w700,
                color: textColor2,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 90),
              MainButton(
                text: "Close",
                onPressed: () {},
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                buttonHeight: 63,
                borderRadius: 100,
                fontSize: 20,
                fontFamily: "Roboto",
                borderColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
