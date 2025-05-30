import 'package:flutter/material.dart';
import 'package:newzler/customWidgets/custom_input_field.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  bool _newObscureText = true;
  bool _cNewObcureText = true;

  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextStyle(text: "Create Password", size: 33),
            _changePwd(),
            SizedBox(height: 20),
            MainButton(
              text: "Create",
              onPressed: () {},
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              buttonHeight: 61,
              borderRadius: 50,
              fontSize: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _changePwd() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        CustomTextStyle(text: "YOUR NEW PASSWORD", size: 12),
        CustomInputField(
          hintText: "HD#729hmGK~!",
          obscureText: _newObscureText,
          suffixWidget: _suffixIcon(() {
            setState(() => _newObscureText = !_newObscureText);
          }, _newObscureText),
          controller: pwdController,
        ),
        SizedBox(height: 20),
        CustomTextStyle(text: "CONFIRM YOUR NEW PASSWORD", size: 12),
        CustomInputField(
          hintText: "HD#729hmGK~!",
          obscureText: _cNewObcureText,
          suffixWidget: _suffixIcon(() {
            setState(() => _cNewObcureText = !_cNewObcureText);
          }, _cNewObcureText),
          controller: pwdController,
        ),
      ],
    );
  }

  Widget _suffixIcon(VoidCallback onPressed, bool isObscured) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        isObscured ? Icons.visibility : Icons.visibility_off,
        size: 24,
      ),
    );
  }
}
