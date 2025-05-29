import 'package:flutter/material.dart';
import 'package:newzler/customWidgets/custom_input_field.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/leading_action_icon_button.dart';
import 'package:newzler/customWidgets/main_button.dart';

class ChangeEmailAddress extends StatefulWidget {
  const ChangeEmailAddress({super.key});

  @override
  State<ChangeEmailAddress> createState() => _ChangeEmailAddressState();
}

class _ChangeEmailAddressState extends State<ChangeEmailAddress> {
  bool _obscureText = true;
  bool _containerVisible = false;
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LeadingActionIconButton(),
                SizedBox(height: 50),
                CustomTextStyle(text: "Your email address", size: 33),
                if (_containerVisible == true) ...{SizedBox(height: 20)},
                _containerVisiblity(),

                _changeEmail(),
                SizedBox(height: 20),

                MainButton(
                  text: "Update",
                  onPressed: () {
                    if (pwdController.text.isEmpty) {
                      _containerVisible = true;
                    }
                    setState(() {});
                  },
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  buttonHeight: 61,
                  borderRadius: 50,
                  fontSize: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _changeEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        CustomTextStyle(text: "YOUR CURRENT PASSWORD", size: 12),
        CustomInputField(
          hintText: "HD#729hmGK~!",
          obscureText: _obscureText,
          suffixWidget: _suffixIcon(),
          controller: pwdController,
        ),

        SizedBox(height: 25),
        CustomTextStyle(text: "YOUR NEW EMAIL ADDRESS", size: 12),
        CustomInputField(
          hintText: "abc123@gmail.com",
          controller: emailController,
        ),
        SizedBox(height: 25),
        CustomTextStyle(text: "CONFIRM YOUR NEW EMAIL ADDRESS", size: 12),
        CustomInputField(
          hintText: "abc123@gmail.com",
          controller: emailController,
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

  Widget _containerVisiblity() {
    return Visibility(
      visible: _containerVisible,
      child: Container(
        width: 345,
        height: 33,
        color: Color(0xFFF8D7DA),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CustomTextStyle(
                text: "Create Password",
                size: 14,
                color: Color.fromARGB(255, 65, 15, 16),
                fontWeight: FontWeight.bold,
              ),
              CustomTextStyle(
                text: " to change your Email Address",
                size: 14,
                color: Color(0XFF6B1E1F),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
