import 'package:flutter/material.dart';
import 'package:newzler/views/account/account_screen.dart';
import 'package:newzler/views/category/news_category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Newzler',
      home: NewsCategory(),
    );
  }
}
