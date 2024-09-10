// ignore_for_file: sort_child_properties_last, prefer_const_constructors, avoid_print

import 'package:car_rantal_application/screens/login_page.dart';
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:car_rantal_application/widgets/Widget%20Custom%20Button/custom_button.dart';
import 'package:car_rantal_application/widgets/Widget%20Logo/logo.dart';
import 'package:car_rantal_application/widgets/Widget%20Welcom/welcom_title.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // this is logo app
          Logo(
            padding: EdgeInsets.only(top: 90, left: 110),
            width: width * 0.62,
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              widthFactor: 1,
              heightFactor: 0.5,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColorBlue,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 55),
            child: Center(
              child: Transform.scale(
                scale: 2.1,
                child: Image.asset('assets/img/CarWelcomePage.png'),
              ),
            ),
          ),

          WelcomTitle(),

          Positioned(
            bottom: height * 0.05,
            left: width * 0.04,
            right: width * 0.04,
            child: CustomButton(
              titleBtn: "Let's Go!",
              colorBtn: AppColors.buttonRed,
              colorTitle: AppColors.textWhite,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
                print('### Navigate welcome page to Login page ###');
              },
            ),
          ),
        ],
      ),
    );
  }
}
