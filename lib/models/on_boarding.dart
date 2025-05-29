class OnBoarding {
  final String text;
  final String imagePath;

  OnBoarding({required this.text, required this.imagePath});
}

List<OnBoarding> onBoardingList = [
  OnBoarding(text: "Trending News", imagePath: "assets/images/trending.png"),
  OnBoarding(
    text: "React, Save & Share News",
    imagePath: "assets/images/share.png",
  ),
  OnBoarding(
    text: "Video & Live News From Youtube",
    imagePath: "assets/images/video.png",
  ),
  OnBoarding(
    text: "Browse News From variety Of Categories",
    imagePath: "assets/images/browse.png",
  ),
];
