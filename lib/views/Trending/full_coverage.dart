import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/models/news_model.dart';

class FullCoverage extends StatefulWidget {
  const FullCoverage({super.key});

  @override
  State<FullCoverage> createState() => _FullCoverageState();
}

class _FullCoverageState extends State<FullCoverage> {
  List<int> addBookMark = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
        title: CustomTextStyle(text: "Full Coverage", size: 18),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Expanded(child: _trendingNewsList())],
        ),
      ),
    );
  }

  Widget _trendingNewsList() {
    return ListView.builder(
      itemCount: trendingData.length,
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
                      trendingData[i].channelLogoPath,
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
          onTap: () {
            _likeBottomSheet();
          },
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
          onTap: () {
            _shareBottomSheet();
          },
          child: Image.asset(
            "assets/images/trending/share.png",
            height: 24,
            width: 24,
          ),
        ),
      ],
    );
  }

  void _likeBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color.fromARGB(229, 221, 221, 221),

      builder: (context) {
        return SizedBox(
          height: 255,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                CustomTextStyle(text: "React", size: 20),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _bottomContentWidget(
                      "assets/images/like.png",
                      "Like",
                      () {},
                    ),
                    _bottomContentWidget(
                      "assets/images/love.png",
                      "Love",
                      () {},
                    ),
                    _bottomContentWidget(
                      "assets/images/haha.png",
                      "Haha",
                      () {},
                    ),
                    _bottomContentWidget("assets/images/wow.png", "Wow", () {}),
                    _bottomContentWidget("assets/images/sad.png", "Sad", () {}),
                    _bottomContentWidget(
                      "assets/images/angry.png",
                      "Angry",
                      () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _shareBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color.fromARGB(229, 221, 221, 221),

      builder: (context) {
        return SizedBox(
          height: 255,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                CustomTextStyle(text: "Share", size: 20),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _bottomContentWidget(
                      "assets/images/whatsapp.png",
                      "Whatsapp",
                      () {},
                    ),
                    _bottomContentWidget(
                      "assets/images/twitter.png",
                      "Twitter",
                      () {},
                    ),
                    _bottomContentWidget(
                      "assets/images/youtube.png",
                      "Youtube",
                      () {},
                    ),
                    _bottomContentWidget(
                      "assets/images/facebook.png",
                      "Facebook",
                      () {},
                    ),
                    _bottomContentWidget(
                      "assets/images/copy.png",
                      "Copy",
                      () {},
                    ),
                    _bottomContentWidget(
                      "assets/images/share.png",
                      "Share",
                      () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _bottomContentWidget(
    String imagePath,
    String text,
    VoidCallback onPressed,
  ) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Image.asset(imagePath, height: 36, width: 28),
          SizedBox(height: 5),
          CustomTextStyle(
            text: text,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            size: 11,
          ),
        ],
      ),
    );
  }
}
