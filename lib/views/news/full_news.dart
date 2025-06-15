import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';

class FullNews extends StatefulWidget {
  const FullNews({super.key});

  @override
  State<FullNews> createState() => _FullNewsState();
}

class _FullNewsState extends State<FullNews> {
  List<int> addBookMark = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image.asset("assets/images/news/fullNews.png", height: 385),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(100),
                  child: Image.asset(
                    "assets/images/trending/newsLogo.png",
                    width: 38,
                  ),
                ),
                SizedBox(width: 11),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextStyle(
                      text: "New18",
                      size: 14,
                      color: Colors.white,
                    ),
                    CustomTextStyle(
                      text: "10 min ago",
                      size: 11,
                      color: textColor2,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 44),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 5,
                  height: 81,
                  decoration: BoxDecoration(
                    color: Color(0XFFBB1F19),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 14),
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 110,
                      child: CustomTextStyle(
                        text:
                            "Trump presidency’s final days: in his mind, he will not have lost’",
                        size: 24,
                        color: Colors.white,
                        softWrap: true,
                      ),
                    ),
                    SizedBox(height: 18),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 110,
                      child: CustomTextStyle(
                        text:
                            "Lorem ipsum dolor sit amet consectetur. Eget vestibulum orci a vulputate in suspendisse. Lacus sollicitudin morbi leo lectus molestie quis. Ullamcorper pulvinar congue elementum neque arcu amet tempor. In risus pharetra suscipit lacus sagittis sollicitudin.",
                        size: 13,
                        color: Colors.white,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 13),
          _iconRow(),
          SizedBox(height: 10),
          MainButton(
            text: "Read the Full Story",
            onPressed: () {},
            backgroundColor: Color(0XFFBB1F19),
            buttonHeight: 60,
            buttonWidth: 333,
            borderRadius: 50,
            fontSize: 20,
            elevation: 10,
          ),
        ],
      ),
    );
  }

  Widget _iconRow() {
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
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.bookmark, color: textColor2, size: 19),
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
