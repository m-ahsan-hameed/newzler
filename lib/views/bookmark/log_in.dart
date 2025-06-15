import 'package:flutter/material.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/functions/common_functions.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTextStyle(text: "My Category", size: 20),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(child: Image.asset("assets/bookmark/Group.png")),
            SizedBox(height: 70),
            CommonFunctions().notLogin(
              "Create an account or log in to Newzler to contiue",
              () {},
              () {},
              50,
            ),
          ],
        ),
      ),
    );
  }
}
