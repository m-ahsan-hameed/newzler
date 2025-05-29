import 'package:flutter/material.dart';
import 'package:newzler/views/ForgotViews/forget_username.dart';
import 'package:newzler/views/profileSection/email_setting.dart';
import 'package:newzler/views/profileSection/mobile_screen.dart';
import 'package:newzler/views/profileSection/profile_screen.dart';
import 'package:newzler/views/validation/email/change_email_address.dart';
import 'package:newzler/views/validation/email/email_confirmation.dart';

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
      home: ForgetUsername(),
    );
  }
}
