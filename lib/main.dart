// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/screens/home_page.dart';
import 'package:car_rantal_application/screens/sign_up_page.dart';
import 'package:car_rantal_application/screens/welcome_page.dart';
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      initialRoute: 'Welcome Page',
        routes: {
          'Welcome Page': (context) => WelcomePage(),
          
      },
    );
  }
}
