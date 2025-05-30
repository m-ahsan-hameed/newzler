import 'package:flutter/material.dart';
import 'package:newzler/customWidgets/custom_drop_down_button.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/leading_action_icon_button.dart';
import 'package:newzler/customWidgets/main_button.dart';

class Country extends StatefulWidget {
  const Country({super.key});

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  String? _selectedCountry;
  List<String> countryList = ["Pakistan", "China", "Bangladesh", "India"];
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
              CustomTextStyle(text: "Your Country", size: 40),
              SizedBox(height: 20),
              CustomDropDownButton<String>(
                items: countryList,
                hintText: "Pakistan",
                value: _selectedCountry,
                onChange: (newvalue) {
                  _selectedCountry = newvalue;
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
