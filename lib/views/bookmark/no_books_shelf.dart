import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';

class NoBooksShelf extends StatelessWidget {
  const NoBooksShelf({super.key});

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
            Center(
              child: Image.asset(
                "assets/bookmark/noBooks.png",
                width: 250,
                height: 372,
              ),
            ),
            SizedBox(height: 70),
            CustomTextStyle(
              text: "Your bookshelf has no news",
              size: 18,
              fontWeight: FontWeight.w700,
              color: textColors,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
