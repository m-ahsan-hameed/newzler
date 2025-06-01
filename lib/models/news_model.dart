class NewsModel {
  String newsImagePath;
  String newsText;
  String channelLogoPath;
  String uploadTime;
  String newsChannelName;

  NewsModel({
    required this.newsImagePath,
    required this.newsText,

    required this.channelLogoPath,
    required this.newsChannelName,
    required this.uploadTime,
  });
}

List<NewsModel> trendingData = [
  NewsModel(
    newsImagePath: "assets/images/trending/tren1.png",
    newsChannelName: "News18",
    channelLogoPath: "assets/images/trending/newsLogo.png",
    newsText:
        "A protester carries the Confederate flag after breaching US Captical security",
    uploadTime: "5 Hours Ago",
  ),
  NewsModel(
    newsImagePath: "assets/images/trending/tren2.png",
    newsChannelName: "News18",
    channelLogoPath: "assets/images/trending/newsLogo.png",
    newsText:
        "A protester carries the Confederate flag after breaching US Captical security",
    uploadTime: "5 Hours Ago",
  ),
  NewsModel(
    newsImagePath: "assets/images/trending/tren2.png",
    newsChannelName: "News18",
    channelLogoPath: "assets/images/trending/newsLogo.png",
    newsText:
        "A protester carries the Confederate flag after breaching US Captical security",
    uploadTime: "5 Hours Ago",
  ),
  // NewsModel(
  //   newsImagePath: "assets/images/trending/tren3.png",
  //   newsChannelName: "News18",
  //   channelLogoPath: "assets/images/trending/newsLogo.png",
  //   newsText:
  //       "A protester carries the Confederate flag after breaching US Captical security",
  //   uploadTime: "5 Hours Ago",
  // ),
];
