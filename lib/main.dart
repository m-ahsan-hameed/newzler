import 'package:flutter/material.dart';
import 'package:newzler/views/bookmark/log_in.dart';
import 'package:newzler/views/bookmark/my_book_mark.dart';
import 'package:newzler/views/bookmark/no_books_shelf.dart';
import 'package:newzler/views/category/language_cate.dart';
import 'package:newzler/views/category/my_category.dart';
import 'package:newzler/views/category/news_cate.dart';
import 'package:newzler/views/home/home.dart';
import 'package:newzler/views/news/full_news.dart';
import 'package:newzler/views/update/maintenance.dart';
import 'package:newzler/views/update/update.dart';

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
      home: Home(),
    );
  }
}
