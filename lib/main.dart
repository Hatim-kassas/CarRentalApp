// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/screens/home_page.dart';
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColorGrey,
      ),
      home: HomePage(),
    );
  }
}
