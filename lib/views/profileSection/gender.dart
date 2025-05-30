import 'package:flutter/material.dart';
import 'package:newzler/customWidgets/custom_drop_down_button.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/leading_action_icon_button.dart';
import 'package:newzler/customWidgets/main_button.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String? _selectedGender;
  List<String> genderList = ["Male", "Female"];
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
              CustomTextStyle(text: "Your gender", size: 40),
              SizedBox(height: 20),
              CustomDropDownButton<String>(
                items: genderList,
                hintText: "Male",
                value: _selectedGender,
                onChange: (newvalue) {
                  _selectedGender = newvalue;
                  setState(() {});
                },
                itemLabelBuilder: (item) => item.toString(),
              ),
              SizedBox(height: 20),
              MainButton(
                text: "Update",
                onPressed: () {},
                buttonHeight: 61,
                buttonWidth: 335,
                borderRadius: 50,
                fontSize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
