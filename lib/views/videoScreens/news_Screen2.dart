import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/models/news_model.dart';

class NewsScreen2 extends StatefulWidget {
  const NewsScreen2({super.key});

  @override
  State<NewsScreen2> createState() => _NewsScreen2State();
}

class _NewsScreen2State extends State<NewsScreen2> {
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
                      videosList[i].channelLogoPath,
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
          ],
        );
      },
    );
  }
}
