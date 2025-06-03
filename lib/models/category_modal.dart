import 'package:flutter/foundation.dart';

class CategoryModal {
  String? leadingImage;
  String title;

  CategoryModal({this.leadingImage, required this.title});
}

List<CategoryModal> newsCategoryList = [
  CategoryModal(title: "All", leadingImage: "assets/category/all.png"),
  CategoryModal(title: "Weather", leadingImage: "assets/category/weather.png"),
  CategoryModal(
    title: "Business",
    leadingImage: "assets/category/business.png",
  ),
  CategoryModal(title: "Entmt", leadingImage: "assets/category/entmt.png"),
  CategoryModal(title: "General", leadingImage: "assets/category/general.png"),
  CategoryModal(title: "Health", leadingImage: "assets/category/health.png"),
  CategoryModal(title: "Lifestyle", leadingImage: "assets/category/life.png"),
  CategoryModal(title: "Science", leadingImage: "assets/category/science.png"),
  CategoryModal(title: "Sports", leadingImage: "assets/category/sports.png"),
  CategoryModal(title: "Tech", leadingImage: "assets/category/tech.png"),
  CategoryModal(title: "World", leadingImage: "assets/category/world.png"),
  CategoryModal(title: "Food", leadingImage: "assets/category/food.png"),
  CategoryModal(title: "Travel", leadingImage: "assets/category/travel.png"),
  CategoryModal(title: "Gaming", leadingImage: "assets/category/gaming.png"),
  CategoryModal(title: "Agriculture", leadingImage: "assets/category/agri.png"),
  CategoryModal(title: "Weird", leadingImage: "assets/category/weird.png"),
];
