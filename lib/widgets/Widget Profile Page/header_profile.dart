// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderProfile extends StatefulWidget {
  const HeaderProfile({super.key});

  @override
  State<HeaderProfile> createState() => _HeaderProfileState();
}

class _HeaderProfileState extends State<HeaderProfile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
        children: [
          // First container (blue background)
          Container(
            height: height * 0.32,
            width: width,
            decoration: BoxDecoration(
              color: AppColors.backgroundColorBlue,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(
              child: Column(
              children: [
                Text('Profile',style: TextStyle(fontFamily: 'InriaSans', fontSize: 26, color: Colors.white),),
                SizedBox(height: height * 0.01,),
                Container(
                  padding: const EdgeInsets.all(3), // Optional padding for space around the border
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle, // Ensure the shape is a circle
                    color: Colors.transparent, // Optional, adjust if you want a background color
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Circular shape
                      border: Border.all(
                        color: Colors.white, // Border color
                        width: 2.0, // Border thickness
                      ),
                    ),
                    child: ClipOval(
                      // ClipOval ensures the image is clipped in a circle
                      child: Image.asset(
                        'assets/img/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
                        width: width * 0.23,
                        height: width * 0.23, // Ensure width and height are the same for a circular image
                        fit: BoxFit.cover, // Ensure the image covers the area
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01,),
                Text(
                  'John Downson',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'InriaSans',
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      ),
                ),
                Text(
                  '+212 659331087',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'InriaSans',
                      color: Colors.white
                  ),
                )
              ],
              ),
            ),
          ),
        ],
      );
  }
}