// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:car_rantal_application/widgets/Widget%20Home%20page/app_bar_homepage.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/slide_top_brands.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/top_brands.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            AppBarHomepage(),
            SizedBox(
              height: height * 0.03,
            ),
            TopBradsWidget(),
            SizedBox(
              height: height * 0.01,
            ),
            SlideTopBrands()
          ],
        ));
  }
}
