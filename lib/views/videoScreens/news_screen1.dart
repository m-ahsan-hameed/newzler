import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/models/news_model.dart';

class NewsScreen1 extends StatefulWidget {
  const NewsScreen1({super.key});

  @override
  State<NewsScreen1> createState() => _NewsScreen1State();
}

class _NewsScreen1State extends State<NewsScreen1> {
  List<int> addBookMark = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: CustomTextStyle(text: "Video", size: 18),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextStyle(text: "Live News", size: 18, fontFamily: "Roboto"),
            SizedBox(height: 17),
            SizedBox(height: 100, child: _liveNewsList()),

            CustomTextStyle(
              text: "Recommended",
              size: 18,
              fontFamily: "Roboto",
            ),
            SizedBox(height: 10),
            Expanded(child: _videos()),
          ],
        ),
      ),
    );
  }

  Widget _liveNewsList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: newsChannelList.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(81),
                child: Image.asset(
                  newsChannelList[i].channelLogoPath!,
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 5),
              CustomTextStyle(
                text: newsChannelList[i].newsChannelName,
                size: 11,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w800,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _videos() {
    return ListView.builder(
      itemCount: videosList.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(videosList[i].newsImagePath!),
                Icon(FontAwesomeIcons.play, size: 50, color: Colors.white),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.asset(
                      videosList[i].channelLogoPath!,
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
                        text: videosList[i].newsText!,
                        size: 17,
                        lineHeight: 1.2,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CustomTextStyle(
                            text: videosList[i].uploadTime!,
                            size: 10,
                          ),
                          CustomTextStyle(text: " | ", size: 10),
                          CustomTextStyle(
                            text: videosList[i].newsChannelName,
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
}
