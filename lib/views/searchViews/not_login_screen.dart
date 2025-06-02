import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/functions/common_functions.dart';
import 'package:newzler/models/news_model.dart';

class NotLoginScreen extends StatefulWidget {
  const NotLoginScreen({super.key});

  @override
  State<NotLoginScreen> createState() => _NotLoginScreenState();
}

class _NotLoginScreenState extends State<NotLoginScreen> {
  List<int> addBookMark = [];
  bool _login = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title: CustomTextStyle(text: "Search", size: 18),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _searchList(),
              if (_login == false)
                CommonFunctions().notLogin(
                  "Create an account or login to Newzler to continue.",
                  () {},
                  () {},
                )
              else
                CustomTextStyle(text: _endOfList(), size: 16.5),
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 1,
      itemBuilder: (context, i) {
        return Column(
          children: [
            Image.asset(trendingData[i].newsImagePath!),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.asset(
                      trendingData[i].channelLogoPath!,
                      height: 38,
                      width: 38,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextStyle(
                        text: trendingData[i].newsText!,
                        size: 17,
                        lineHeight: 1.2,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CustomTextStyle(
                            text: trendingData[i].uploadTime!,
                            size: 10,
                          ),
                          CustomTextStyle(text: " | ", size: 10),
                          CustomTextStyle(
                            text: trendingData[i].newsChannelName,
                            size: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),
            _iconRow(i),
            SizedBox(height: 10),
          ],
        );
      },
    );
  }

  Widget _iconRow(int i) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/images/trending/thumbs_up.png",
            height: 24,
            width: 24,
          ),
        ),
        IconButton(
          onPressed: () {
            if (addBookMark.contains(i)) {
              addBookMark.remove(i);
            } else {
              addBookMark.add(i);
            }

            setState(() {});
          },
          icon: Icon(
            addBookMark.contains(i)
                ? FontAwesomeIcons.solidBookmark
                : FontAwesomeIcons.bookmark,
            color: addBookMark.contains(i) ? mainColor : textColor2,
            size: 19,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/images/trending/copy.png",
            height: 24,
            width: 24,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/images/trending/share.png",
            height: 24,
            width: 24,
          ),
        ),
      ],
    );
  }

  String _endOfList() {
    return "That's all we have.";
  }
}
