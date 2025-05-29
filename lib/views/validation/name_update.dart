// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:newzler/customWidgets/custom_input_field.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/leading_action_icon_button.dart';
import 'package:newzler/customWidgets/main_button.dart';

class NameUpdate extends StatelessWidget {
  NameUpdate({super.key});

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LeadingActionIconButton(),
              SizedBox(height: 40),
              CustomTextStyle(text: "Your Name", size: 33),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextStyle(
                        text: "YOUR FIRST NAME",
                        size: 12,
                        fontWeight: FontWeight.w800,
                      ),
                      CustomInputField(
                        width: 130,
                        hintText: "Darrell",
                        controller: firstName,
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextStyle(
                        text: "YOUR LAST NAME",
                        size: 12,
                        fontWeight: FontWeight.w800,
                      ),
                      CustomInputField(
                        width: 130,
                        hintText: "Chan",
                        controller: lastName,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              MainButton(
                text: "Update",
                onPressed: () {},
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                fontSize: 20,
                buttonHeight: 55,
                borderRadius: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
