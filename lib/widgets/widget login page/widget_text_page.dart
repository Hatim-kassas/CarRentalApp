// ignore_for_file: prefer_const_constructors


import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class WidgetTextPage extends StatelessWidget {
  const WidgetTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: height * 0.07,),
            Text(
              "Welcome to Swift Car",
              style: TextStyle(
                color: AppColors.textgrey2,
                fontSize: 35,
                fontFamily: 'InriaSans',
                fontWeight: FontWeight.w700
              ),
            ),

            SizedBox(height: height * 0.02,),
            Text(
              "Swift Car is a quick and easy car rental app. Choose \nfrom a variety of vehicles, book in minutes,\nand enjoy transparent pricing and 24/7 support.",
              style: TextStyle(
                color: AppColors.textgrey2,
                fontSize: 14,
                fontFamily: 'InriaSans',
                fontWeight: FontWeight.w600
              ),
              textAlign: TextAlign.center,
            ),
      ],
    );
  }
}