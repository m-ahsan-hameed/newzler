import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';

class ProfileModel {
  CustomTextStyle text;
  bool hasTrailing;
  IconData iconData;
  CustomTextStyle value;

  ProfileModel({
    required this.text,
    required this.hasTrailing,
    this.iconData = Icons.arrow_right,
    required this.value,
  });
}

List<ProfileModel> profileList = [
  ProfileModel(
    text: CustomTextStyle(text: "NAME", size: 11),
    hasTrailing: true,
    value: CustomTextStyle(text: "Darrell Chan", size: 18, color: textColor2),
  ),
  ProfileModel(
    text: CustomTextStyle(text: "USERNAME", size: 11),
    hasTrailing: false,
    value: CustomTextStyle(text: "Darrell", size: 18, color: textColor2),
  ),
  ProfileModel(
    text: CustomTextStyle(text: "EMAIL ADDRESS", size: 11),
    hasTrailing: true,
    value: CustomTextStyle(
      text: "abc123@gmail.com",
      size: 18,
      color: textColor2,
    ),
  ),
  ProfileModel(
    text: CustomTextStyle(text: "MOBILE NUMBER", size: 11),
    hasTrailing: true,
    value: CustomTextStyle(text: "+92-123456789", size: 18, color: textColor2),
  ),
  ProfileModel(
    text: CustomTextStyle(text: "BIRTHDAY", size: 11),
    hasTrailing: true,
    value: CustomTextStyle(
      text: "December 8, 1990",
      size: 18,
      color: textColor2,
    ),
  ),
  ProfileModel(
    text: CustomTextStyle(text: "GENDER", size: 11),
    hasTrailing: true,
    value: CustomTextStyle(text: "Male", size: 18, color: textColor2),
  ),
  ProfileModel(
    text: CustomTextStyle(text: "COUNTRY", size: 11),
    hasTrailing: true,
    value: CustomTextStyle(text: "Pakistan", size: 18, color: textColor2),
  ),
  ProfileModel(
    text: CustomTextStyle(text: "TIME ZONE", size: 11),
    hasTrailing: false,
    value: CustomTextStyle(text: "Asia/Karachi", size: 18, color: textColor2),
  ),
  ProfileModel(
    text: CustomTextStyle(text: "LAST LOGIN", size: 11),
    hasTrailing: false,
    value: CustomTextStyle(
      text: "January 18,2021 02:32 PM",
      size: 18,
      color: textColor2,
    ),
  ),
  ProfileModel(
    text: CustomTextStyle(text: "MEMBER SINCE", size: 11),
    hasTrailing: false,
    value: CustomTextStyle(
      text: "January 18,2021",
      size: 18,
      color: textColor2,
    ),
  ),
];
