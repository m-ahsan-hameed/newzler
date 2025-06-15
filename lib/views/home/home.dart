import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/models/news_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int active = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset("assets/images/home.png"),
                Positioned(
                  top: 60,
                  left: 0,
                  right: 0,
                  child: SizedBox(height: 50, child: _topNav()),
                ),
                Positioned(bottom: 35, left: 28, child: _newsDetail()),
                Positioned(
                  right: 20,
                  bottom: 0,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        CustomTextStyle(
                          text: "View All",
                          color: mainColor,
                          size: 14,
                          fontFamily: "Inter",
                        ),
                        SizedBox(width: 5),
                        Icon(
                          FontAwesomeIcons.arrowRightLong,
                          color: mainColor,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 07),
            Padding(
              padding: const EdgeInsets.all(13),
              child: CustomTextStyle(
                text: "Trending",
                fontFamily: "Inter",
                size: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            _trendingCat(),
            SizedBox(height: 07),
            Padding(
              padding: const EdgeInsets.all(13),
              child: CustomTextStyle(
                text: "My News",
                fontFamily: "Inter",
                size: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            _myNews(),
          ],
        ),
      ),
    );
  }

  List<String> topNavList = [
    "My News",
    "World",
    "Business",
    "Health",
    "Travel",
  ];

  Widget _topNav() {
    return ListView.builder(
      itemCount: topNavList.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  active = i;
                  setState(() {});
                },
                child: CustomTextStyle(
                  text: topNavList[i],
                  size: 14,
                  color: active == i ? mainColor : Colors.white,
                  fontFamily: "Inter",
                ),
              ),
              SizedBox(height: 8),
              if (active == i)
                Container(
                  height: 7,
                  width: 33,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _newsDetail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "assets/images/trending/newsLogo.png",
                width: 38,
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextStyle(
                  text: "New18",
                  size: 14,
                  fontFamily: "Inter",
                  color: Colors.white,
                ),
                CustomTextStyle(
                  text: "1h |US & canada",
                  size: 10,
                  fontFamily: "Inter",
                  color: textColor2,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 302,
          child: CustomTextStyle(
            text:
                "Trump presidency’s final days; in his mind, he will not have lost’",
            size: 18,
            softWrap: true,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 19),
        SizedBox(
          width: MediaQuery.of(context).size.width - 70,
          child: _iconRow(),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _iconRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

  Widget _trendingCat() {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, i) {
          final actualI = i + 1;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 133,
              decoration: BoxDecoration(color: Color(0XFFF2F2F2)),
              child: Center(
                child: CustomTextStyle(
                  text: "Trending-$actualI",
                  size: 15,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _myNews() {
    return ListView.builder(
      itemCount: trendingData.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
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
            _iconRow(),
            SizedBox(height: 10),
          ],
        );
      },
    );
  }
}
