import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_input_field.dart';
import 'package:newzler/customWidgets/custom_text_button.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/leading_action_icon_button.dart';
import 'package:newzler/customWidgets/main_button.dart';
import 'package:newzler/views/validation/login.dart';
import 'package:newzler/views/validation/name_update.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  bool _obscureText = true;
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LeadingActionIconButton(),
                SizedBox(height: 40),
                _signUpDetails(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _signUpDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextStyle(text: "Sign Up", size: 33),
        SizedBox(height: 10),
        CustomTextStyle(
          text: "Create Your Newzler Account",
          size: 14,
          color: textColor2,
        ),
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
                  controller: firstNameController,
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
                  controller: lastNameController,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
        CustomTextStyle(text: "CHOOSE YOUR USERNAME", size: 12),
        CustomInputField(
          hintText: "Darrell Chan",
          controller: userNameController,
        ),
        SizedBox(height: 15),
        CustomTextStyle(text: "YOUR EMAIL", size: 12),
        CustomInputField(
          hintText: "abc123@gmail.com",
          controller: emailController,
        ),
        SizedBox(height: 15),
        CustomTextStyle(text: "YOUR PASSWORD", size: 12),
        CustomInputField(
          hintText: "Darrell Chan",
          obscureText: _obscureText,
          suffixWidget: _suffixIcon(),
          controller: pwdController,
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? val) {
                isChecked = val!;
                setState(() {});
              },
              fillColor: MaterialStateProperty.all(mainColor),
            ),
            CustomTextStyle(
              text:
                  "I agree to the Newzler Terms of Service and Privacy Policy",
              size: 11,
            ),
          ],
        ),
        SizedBox(height: 50),
        MainButton(
          text: "Sign Up",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NameUpdate()),
            );
          },
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          fontSize: 20,
          buttonHeight: 55,
          borderRadius: 50,
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextStyle(text: "Already have an Account?", size: 14),
            CustomTextButton(
              text: "Login",
              textColor: mainColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              size: 16,
            ),
          ],
        ),
      ],
    );
  }

  Widget _suffixIcon() {
    return IconButton(
      onPressed: () {
        _obscureText = !_obscureText;
        setState(() {});
      },
      icon: Icon(
        _obscureText ? Icons.visibility : Icons.visibility_off,
        size: 24,
      ),
    );
  }
}
