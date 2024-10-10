// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_unnecessary_containers

import 'package:car_rantal_application/widgets/Widget%20Home%20page/app_bar_homepage.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/bottom_navigator_bar.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/cards_widget.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/slide_top_brands.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // App Bar Widget
            AppBarHomepage(),
            SizedBox(
              height: height * 0.02,
            ),
            // Top Brands Widget
            SlideTopBrands(),
            // Top Rated Cars Widget
            SizedBox(height: height * 0.81, child: CardsWidget()),
          ],
        ),
      ),
    );
  }
}