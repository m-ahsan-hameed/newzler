import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File? _imagePicked;
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedImage = await _imagePicker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedImage != null) {
      _imagePicked = File(pickedImage.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            children: [
              CustomTextStyle(text: "How you will appear?", size: 44),
              SizedBox(height: 20),
              GestureDetector(
                onTap: _pickImage,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(100),
                  child: Container(
                    height: 162,
                    width: 162,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: _imagePicked != null
                        ? Image.file(_imagePicked!, fit: BoxFit.cover)
                        : Ink.image(
                            image: AssetImage("assets/images/user.png"),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 70),
                              child: Icon(
                                Icons.photo_camera_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              MainButton(
                text: "Continue",
                onPressed: () {},
                buttonHeight: 61,
                fontSize: 20,
                borderRadius: 50,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
              ),
              SizedBox(height: 10),
              MainButton(
                text: "Skip",
                textColor: textColors,
                borderWidth: 2,
                borderColor: textColor2,
                onPressed: () {},
                backgroundColor: Colors.transparent,
                buttonHeight: 61,
                fontSize: 20,
                borderRadius: 50,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
