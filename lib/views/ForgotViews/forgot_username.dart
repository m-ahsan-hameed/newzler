import 'package:flutter/material.dart';
import 'package:newzler/customWidgets/custom_input_field.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/leading_action_icon_button.dart';
import 'package:newzler/customWidgets/main_button.dart';
import 'package:string_validator/string_validator.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    emailController.addListener(() {
      setState(() {});
    });
  }

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
              CustomTextStyle(text: "Forget your Password?", size: 40),
              SizedBox(height: 8),
              CustomTextStyle(
                text: "Give your email address you used during registeration",
                size: 13,
              ),
              SizedBox(height: 10),

              CustomInputField(
                hintText: "ABC123@gmail.com",
                controller: emailController,
                suffixWidget: emailController.text.isNotEmpty
                    ? _suffixIcon()
                    : null,
              ),

              SizedBox(height: 20),
              MainButton(
                text: "Update",
                onPressed: () {
                  if (emailController.text.isEmpty) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("Enter Email")));
                    return;
                  }
                  if (!emailController.text.isEmail) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("Email is invalid")));
                    return;
                  }
                },
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

  Widget _suffixIcon() {
    return InkWell(
      onTap: () {
        emailController.clear();
      },
      child: Image.asset(
        "assets/images/cancel.png",
        height: 20,
        width: 20,
        fit: BoxFit.contain,
      ),
    );
  }
}
