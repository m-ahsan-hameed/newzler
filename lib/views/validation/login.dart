import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_input_field.dart';
import 'package:newzler/customWidgets/custom_text_button.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/leading_action_icon_button.dart';
import 'package:newzler/customWidgets/main_button.dart';
import 'package:newzler/views/validation/sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailUserController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              LeadingActionIconButton(),
              _loginDetails(),
              _extraButtons(),
            ],
          ),
        ),
      ),
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

  Widget _loginDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        CustomTextStyle(text: "Login", size: 33),
        SizedBox(height: 20),
        CustomTextStyle(
          text: "Use your email or username and password",
          size: 14,
          color: textColor2,
        ),
        SizedBox(height: 25),
        CustomTextStyle(
          text: "YOUR EMAIL/USERNAME",
          size: 10,
          fontWeight: FontWeight.w800,
        ),
        CustomInputField(
          hintText: "abc123@gmail.com",
          controller: emailUserController,
        ),
        SizedBox(height: 25),
        CustomTextStyle(
          text: "YOUR PASSWORD",
          size: 10,
          fontWeight: FontWeight.w800,
        ),
        CustomInputField(
          controller: pwdController,
          obscureText: _obscureText,
          hintText: "HD#729HMGKJ~!",
          suffixWidget: _suffixIcon(),
        ),
        SizedBox(height: 20),
        MainButton(
          text: "Login",
          onPressed: () {},
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          buttonHeight: 55,
          borderRadius: 50,
          fontSize: 20,
        ),
      ],
    );
  }

  Widget _extraButtons() {
    return Positioned(
      bottom: 30,
      left: 0,
      right: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextButton(text: "Forgot Your Password?", onPressed: () {}),
          CustomTextButton(text: "Forgot Your Username?", onPressed: () {}),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextStyle(text: "Don't have an Account?", size: 14),
              CustomTextButton(
                text: "Sign UP",
                textColor: mainColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                size: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
