import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/models/news_model.dart';
import 'package:video_player/video_player.dart';

class SingleVideoScreen extends StatefulWidget {
  const SingleVideoScreen({super.key});

  @override
  State<SingleVideoScreen> createState() => _SingleVideoScreenState();
}

class _SingleVideoScreenState extends State<SingleVideoScreen> {
  late VideoPlayerController _controller;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/video.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _videoPlayer(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: 285,
                child: CustomTextStyle(
                  text:
                      "A protester carries the Confederate flag after breaching US Captical security",
                  size: 15,
                  color: textColor2,
                ),
              ),
            ),
            // SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  CustomTextStyle(text: "5 hours ago", size: 10),
                  CustomTextStyle(text: " | ", size: 10),
                  CustomTextStyle(text: "US Canada", size: 10),
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(color: textColor2.withOpacity(0.2)),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/trending/newsLogo.png",
                      width: 38,
                    ),
                  ),
                  SizedBox(width: 5),
                  CustomTextStyle(text: "News 18", size: 14),
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(color: textColor2.withOpacity(0.2)),

            Expanded(child: _videoList()),
          ],
        ),
      ),
    );
  }

  Widget _videoPlayer() {
    return Stack(
      alignment: Alignment.center,
      children: [
        AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),

        Center(
          child: GestureDetector(
            onTap: () {
              isPlaying ? _controller.pause() : _controller.play();
              isPlaying = !isPlaying;
              setState(() {});
            },
            child: isPlaying
                ? SizedBox()
                : Icon(Icons.play_arrow, size: 50, color: Colors.white),
          ),
        ),

        Positioned(
          top: 10,
          left: 10,
          child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 14),
        ),

        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: Slider(
            activeColor: mainColor,
            inactiveColor: Colors.grey.withOpacity(0.5),
            min: 0,
            max: _controller.value.position.inSeconds.toDouble(),
            value: _controller.value.position.inSeconds.toDouble(),
            onChanged: (value) {
              setState(() {});
              _controller.seekTo(Duration(seconds: value.toInt()));
            },
          ),
        ),
      ],
    );
  }

  Widget _videoList() {
    return ListView.builder(
      itemCount: videoPlayerList.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Row(
            children: [
              Container(
                height: 81,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  videoPlayerList[i].newsImagePath!,

                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextStyle(
                      text: videoPlayerList[i].newsText!,
                      size: 15,
                    ),
                    SizedBox(height: 27),
                    Row(
                      children: [
                        CustomTextStyle(
                          text: "5 hours ago",
                          size: 10,
                          color: textColor2,
                        ),
                        CustomTextStyle(
                          text: " | ",
                          size: 10,
                          color: textColor2,
                        ),
                        CustomTextStyle(
                          text: "US Canada",
                          size: 10,
                          color: textColor2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
