import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/pages/home/home_page.dart';
import 'package:flutter_lesson_5/pages/login/login_page.dart';
import 'package:flutter_lesson_5/pages/pre_login/pre_login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PreLoginPage(),
    );
  }
}