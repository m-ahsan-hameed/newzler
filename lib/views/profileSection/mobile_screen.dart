import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_input_field.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/leading_action_icon_button.dart';
import 'package:newzler/customWidgets/main_button.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LeadingActionIconButton(),
              SizedBox(height: 40),
              CustomTextStyle(text: "Your mobile number", size: 40),
              SizedBox(height: 20),
              CustomTextStyle(text: "Your Current Mobile Number", size: 10),
              SizedBox(height: 10),
              _mobileInputField(),
              SizedBox(height: 20),
              MainButton(
                text: "Update",
                onPressed: () {},
                buttonHeight: 61,
                buttonWidth: 335,
                borderRadius: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _mobileInputField() {
    return Container(
      width: 331,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: textColor2)),
      ),
      child: Row(
        children: [
          CustomInputField(width: 30, hintText: "+92"),
          Container(width: 1, height: 48, color: textColor2),
          SizedBox(width: 10),
          Expanded(child: CustomInputField(hintText: "123456789")),
        ],
      ),
    );
  }
}
