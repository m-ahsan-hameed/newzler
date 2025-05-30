import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/models/profile_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextStyle(
                text: "Profile",
                size: 40,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 10),
              _profileScreenList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileScreenList() {
    return ListView.builder(
      itemCount: profileList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  profileList[index].text,
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      profileList[index].value,
                      Icon(
                        profileList[index].hasTrailing
                            ? CupertinoIcons.arrow_right
                            : null,
                        size: 12.41,
                        color: textColor2,
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Divider(height: 1),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
