class NewsModel {
  String? newsImagePath;
  String? newsText;
  String? channelLogoPath;
  String? uploadTime;
  String newsChannelName;

  NewsModel({
    this.newsImagePath,
    this.newsText,
    this.channelLogoPath,
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

List<NewsModel> videoPlayerList = [
  NewsModel(
    newsImagePath: "assets/images/videoList.png",
    newsChannelName: "News18",
    newsText: "Meet the woman behind India’s best bar",
    uploadTime: "5 Hours Ago",
  ),
  NewsModel(
    newsImagePath: "assets/images/videoList.png",
    newsChannelName: "News18",
    newsText: "Meet the woman behind India’s best bar",
    uploadTime: "5 Hours Ago",
  ),
  NewsModel(
    newsImagePath: "assets/images/videoList.png",
    newsChannelName: "News18",
    newsText: "Meet the woman behind India’s best bar",
    uploadTime: "5 Hours Ago",
  ),
  NewsModel(
    newsImagePath: "assets/images/videoList.png",
    newsChannelName: "News18",
    newsText: "Meet the woman behind India’s best bar",
    uploadTime: "5 Hours Ago",
  ),
  NewsModel(
    newsImagePath: "assets/images/videoList.png",
    newsChannelName: "News18",
    newsText: "Meet the woman behind India’s best bar",
    uploadTime: "5 Hours Ago",
  ),
  NewsModel(
    newsImagePath: "assets/images/videoList.png",
    newsChannelName: "News18",
    newsText: "Meet the woman behind India’s best bar",
    uploadTime: "5 Hours Ago",
  ),
];

List<NewsModel> myBookMarkLists = [
  NewsModel(
    newsImagePath: "assets/bookmark/ddonald.png",
    newsChannelName: "News18",
    newsText:
        "Covid:Dr Scott Atlas - Trum’s controversial conronavirus adviser- resigns",
    uploadTime: "4 minutes Ago",
  ),
  NewsModel(
    newsImagePath: "assets/bookmark/singer.png",
    newsChannelName: "News18",
    newsText: "UNS 1st  December 1945 - Singer Better Midler",
    uploadTime: "4 minutes Ago",
  ),
  NewsModel(
    newsImagePath: "assets/bookmark/ddonald.png",
    newsChannelName: "News18",
    newsText:
        "Covid:Dr Scott Atlas - Trum’s controversial conronavirus adviser- resigns",
    uploadTime: "4 minutes Ago",
  ),
  NewsModel(
    newsImagePath: "assets/bookmark/singer.png",
    newsChannelName: "News18",
    newsText: "UNS 1st  December 1945 - Singer Better Midler",
    uploadTime: "4 minutes Ago",
  ),
  NewsModel(
    newsImagePath: "assets/bookmark/ddonald.png",
    newsChannelName: "News18",
    newsText:
        "Covid:Dr Scott Atlas - Trum’s controversial conronavirus adviser- resigns",
    uploadTime: "4 minutes Ago",
  ),
  NewsModel(
    newsImagePath: "assets/bookmark/singer.png",
    newsChannelName: "News18",
    newsText: "UNS 1st  December 1945 - Singer Better Midler",
    uploadTime: "4 minutes Ago",
  ),
];
