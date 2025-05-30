import 'package:flutter/material.dart';
import 'package:newzler/customWidgets/custom_drop_down_button.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/leading_action_icon_button.dart';
import 'package:newzler/customWidgets/main_button.dart';

class Birthday extends StatefulWidget {
  const Birthday({super.key});

  @override
  State<Birthday> createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  int? _selectedDate;
  String? _selectedMonth;
  int? _selectedYear;
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
              CustomTextStyle(text: "Your birthday"),
              _dateOfBirth(),
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

  List<int> days = List.generate(31, (index) => index + 1);
  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  List<int> year = List.generate(100, (index) => 2025 - index);

  Widget _dateOfBirth() {
    return Row(
      children: [
        CustomDropDownButton<int>(
          width: 50,
          items: days,
          value: _selectedDate,
          hintText: "01",
          onChange: (newValue) {
            _selectedDate = newValue;
            setState(() {});
          },
          itemLabelBuilder: (item) => item.toString(),
        ),
        SizedBox(width: 25),
        CustomDropDownButton<String>(
          width: 120,
          items: months,
          value: _selectedMonth,
          hintText: "January",
          onChange: (newValue) {
            _selectedMonth = newValue;
            setState(() {});
          },
          itemLabelBuilder: (item) => item.toString(),
        ),
        SizedBox(width: 25),
        Expanded(
          child: CustomDropDownButton<int>(
            items: year,
            value: _selectedYear,
            hintText: "2025",
            onChange: (newValue) {
              _selectedYear = newValue;
              setState(() {});
            },
            itemLabelBuilder: (item) => item.toString(),
          ),
        ),
      ],
    );
  }
}
