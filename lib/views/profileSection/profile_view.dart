import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextStyle(text: "How you will appear?", size: 44),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                _circlurAvatar(),
                Positioned(bottom: 10, right: 13, child: _editProfile()),
              ],
            ),
            SizedBox(height: 60),
            _buttons(),
          ],
        ),
      ),
    );
  }

  Widget _circlurAvatar() {
    return CircleAvatar(
      radius: 81,
      backgroundColor: Colors.grey,
      backgroundImage: _imagePicked != null
          ? FileImage(_imagePicked!)
          : AssetImage("assets/images/facebook.png"),
    );
  }

  Widget _editProfile() {
    return GestureDetector(
      onTap: _pickImage,
      child: Container(
        width: 26,
        height: 26,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromARGB(255, 253, 253, 253),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),

        child: Icon(FontAwesomeIcons.penToSquare, size: 16, color: textColor2),
      ),
    );
  }

  Widget _buttons() {
    return Column(
      children: [
        MainButton(
          text: "Update",
          onPressed: () {},
          buttonHeight: 61,
          fontSize: 20,
          borderRadius: 50,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
        ),
        SizedBox(height: 10),
        MainButton(
          text: "Remove",
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
    );
  }
}
