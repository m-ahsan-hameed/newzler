import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_input_field.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';

class EmailSetting extends StatefulWidget {
  const EmailSetting({super.key});

  @override
  State<EmailSetting> createState() => _EmailSettingState();
}

class _EmailSettingState extends State<EmailSetting> {
  TextEditingController confirmCodeController = TextEditingController();
  bool _isResetLoading = false;
  bool _isContinueLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    confirmCodeController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: CustomTextStyle(text: "Account Settings", size: 16),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, size: 14),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextStyle(text: "Confirm Email", size: 33),
              SizedBox(height: 30),
              CustomTextStyle(
                text: "CONFIRMATION CODE",
                size: 10.5,
                fontWeight: FontWeight.w800,
              ),
              CustomInputField(
                controller: confirmCodeController,
                hintText: "5 0 7 8 2",
                keyboardType: TextInputType.number,
                suffixWidget: confirmCodeController.text.isNotEmpty
                    ? _suffixIcon()
                    : null,
                letterSpacing: 5,
              ),
              SizedBox(height: 10),
              CustomTextStyle(
                text:
                    "Please check your email svarup03@gmail.com to confirm your registration",
                size: 14,
              ),
              SizedBox(height: 30),
              MainButton(
                text: "Continue",
                onPressed: () {
                  _isContinueLoading = !_isContinueLoading;
                  setState(() {});
                },
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                buttonHeight: 61,
                borderRadius: 50,
                fontSize: 20,
                isLoading: _isContinueLoading,
                spinnerWidget: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
              SizedBox(height: 10),
              MainButton(
                text: "Resend",
                onPressed: () {
                  _isResetLoading = !_isResetLoading;
                  setState(() {});
                },
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                buttonHeight: 61,
                borderRadius: 50,
                backgroundColor: Colors.transparent,
                textColor: textColors,
                fontSize: 20,
                isLoading: _isResetLoading,
                spinnerWidget: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
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
        confirmCodeController.clear();
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
