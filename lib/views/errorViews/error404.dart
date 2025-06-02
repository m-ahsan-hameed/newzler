import 'package:flutter/material.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';

class Error404 extends StatelessWidget {
  const Error404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTextStyle(text: "Search", size: 18),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Image.asset("assets/images/errors/404.png", height: 390, width: 390),
          SizedBox(height: 40),
          CustomTextStyle(text: "No news has been found", size: 18),
        ],
      ),
    );
  }
}
