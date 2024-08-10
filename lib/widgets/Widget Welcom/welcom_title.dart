// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class WelcomTitle extends StatelessWidget {
  const WelcomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Positioned(
              bottom: height * 0.18,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                
                      Text(
                        "The first app for renting \ncars in Morocco .",
                        style: TextStyle(
                          fontFamily: 'InriaSans',
                          color: AppColors.textWhite,
                          fontSize: 29,
                          fontWeight: FontWeight.w800
                        ),
                      ),
                      
                      SizedBox(height: height * 0.012,),
                      
                      Text(
                        "Rent a Car online Today & Enjoy The Best \nDeals, Rates & Accessories",
                        style: TextStyle(
                          fontFamily: 'InriaSans',
                          color: AppColors.textgrey1,
                          fontSize: 15,
                          fontWeight: FontWeight.w800
                        ),
                      ),
                  ],
                ),
              ),
            );
  }
}