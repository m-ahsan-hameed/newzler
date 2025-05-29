import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';

class LanguageSelect extends StatelessWidget {
  LanguageSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/trending.png")),
            SizedBox(height: 40),
            CustomTextStyle(
              text: "Which Language you prefer to read the news?",
              fontFamily: "Raleway",
              size: 18,
              textAlign: TextAlign.center,
              color: textColor2,
              fontWeight: FontWeight.w800,
            ),
            SizedBox(height: 20),
            _languageDropdown(),
            SizedBox(height: 90),
            _buttons(),
          ],
        ),
      ),
    );
  }

  List<String> language = ["English", "Urdu", "French", "Arabic"];

  Widget _languageDropdown() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        isExpanded: true,
        hint: CustomTextStyle(text: "Language", size: 18, color: mainColor),
        icon: Icon(Icons.arrow_circle_down_rounded),
        items: language.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: CustomTextStyle(text: value, size: 18),
          );
        }).toList(),
        onChanged: (String? newVal) {},
      ),
    );
  }

  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MainButton(
          text: "Skip",
          onPressed: () {},
          backgroundColor: Colors.transparent,
          textColor: textColors,
          borderWidth: 0.7,
          fontSize: 18,
          buttonWidth: 151,
          buttonHeight: 59,
          borderRadius: 50,
        ),
        SizedBox(width: 10),
        MainButton(
          text: "Done",
          onPressed: () {},
          fontSize: 18,
          buttonWidth: 151,
          buttonHeight: 59,
          borderRadius: 50,
        ),
      ],
    );
  }
}
