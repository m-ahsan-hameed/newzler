import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';
import 'package:newzler/functions/common_functions.dart';
import 'package:newzler/models/account_screen_model.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({super.key});

  bool _isUserLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTextStyle(text: "Account", size: 18),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _isUserLogin ? _userLogin() : _userNotLogin(),
            _accountList(),
          ],
        ),
      ),
    );
  }

  Widget _userLogin() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Image.asset("assets/accountImages/user.png", width: 70),
              SizedBox(width: 17),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomTextStyle(text: "Darrell Chan", size: 18),
                      SizedBox(width: 10),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: BoxBorder.all(color: Color(0XFF196F93)),
                        ),
                        child: Icon(
                          Icons.arrow_right,
                          color: Color(0XFF196F93),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomTextStyle(
                    text: "abc123@gmail.com",
                    color: textColor2,
                    size: 13,
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }

  Widget _accountList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: accountList.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          child: ListTile(
            leading: Image.asset(accountList[i].leadingIcon, width: 22),
            title: CustomTextStyle(
              text: accountList[i].title,
              size: 17,
              fontWeight: FontWeight.w600,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
            tileColor: Color(0XFFEBEBEB),
          ),
        );
      },
    );
  }

  Widget _userNotLogin() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainButton(
            text: "Login",
            onPressed: () {},
            buttonHeight: 61,
            buttonWidth: 150,
            borderRadius: 20,
            elevation: 4,
            mainAxisAlignment: MainAxisAlignment.center,
            fontSize: 20,
          ),
          MainButton(
            text: "Sign Up",
            backgroundColor: Colors.transparent,
            borderWidth: 2,
            textColor: textColors,
            onPressed: () {},
            buttonWidth: 150,
            buttonHeight: 61,
            borderRadius: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            fontSize: 20,
            // elevation: 0,
          ),
        ],
      ),
    );
  }
}
