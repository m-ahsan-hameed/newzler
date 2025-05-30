import 'package:flutter/material.dart';
import 'package:newzler/views/ForgotViews/forget_username.dart';
import 'package:newzler/views/profileSection/birthday.dart';
import 'package:newzler/views/profileSection/country.dart';
import 'package:newzler/views/profileSection/gender.dart';
import 'package:newzler/views/validation/password/change_password.dart';
import 'package:newzler/views/validation/password/create_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Newzler',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Country(),
    );
  }
}
