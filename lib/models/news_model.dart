import 'package:flutter/widgets.dart';

class NewsModel {
  String? newsImagePath;
  String? newsText;
  String channelLogoPath;
  String? uploadTime;
  String newsChannelName;

  NewsModel({
    this.newsImagePath,
    this.newsText,
    required this.channelLogoPath,
    required this.newsChannelName,
    this.uploadTime,
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
];

List<NewsModel> newsChannelList = [
  NewsModel(
    channelLogoPath: "assets/images/news/channel1.png",
    newsChannelName: "News Nation",
  ),
  NewsModel(
    channelLogoPath: "assets/images/news/channel2.png",
    newsChannelName: "Times of india",
  ),
  NewsModel(
    channelLogoPath: "assets/images/news/channel3.png",
    newsChannelName: "Nation Nation",
  ),
  NewsModel(
    channelLogoPath: "assets/images/news/channel4.png",
    newsChannelName: "Gadgets Now",
  ),
  NewsModel(
    channelLogoPath: "assets/images/news/channel5.png",
    newsChannelName: "india today",
  ),
];

List<NewsModel> videosList = [
  NewsModel(
    newsImagePath: "assets/images/news/v3.png",
    newsChannelName: "News18",
    channelLogoPath: "assets/images/trending/newsLogo.png",
    newsText:
        "A protester carries the Confederate flag after breaching US Captical security",
    uploadTime: "5 Hours Ago",
  ),
  NewsModel(
    newsImagePath: "assets/images/news/v1.png",
    newsChannelName: "News18",
    channelLogoPath: "assets/images/trending/newsLogo.png",
    newsText:
        "A protester carries the Confederate flag after breaching US Captical security",
    uploadTime: "5 Hours Ago",
  ),
  NewsModel(
    newsImagePath: "assets/images/news/v2.png",
    newsChannelName: "News18",
    channelLogoPath: "assets/images/trending/newsLogo.png",
    newsText:
        "A protester carries the Confederate flag after breaching US Captical security",
    uploadTime: "5 Hours Ago",
  ),
];
