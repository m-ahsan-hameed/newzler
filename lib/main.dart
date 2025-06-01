import 'package:flutter/material.dart';
import 'package:newzler/views/Trending/full_coverage.dart';
import 'package:newzler/views/Trending/trending_screen.dart';
import 'package:newzler/views/profileSection/profile_view.dart';

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
      home: FullCoverage(),
    );
  }
}
