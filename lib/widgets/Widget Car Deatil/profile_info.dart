// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(
                        3), // Optional padding for space around the border
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle, // Ensure the shape is a circle
                      color: Colors
                          .transparent, // Optional, adjust if you want a background color
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Circular shape
                        border: Border.all(
                          color: AppColors.backgroundColorBlue, // Border color
                          width: 2.0, // Border thickness
                        ),
                      ),
                      child: ClipOval(
                        // ClipOval ensures the image is clipped in a circle
                        child: Image.asset(
                          'assets/img/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
                          width: width * 0.18,
                          height: width *
                              0.18, // Ensure width and height are the same for a circular image
                          fit: BoxFit.cover, // Ensure the image covers the area
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.015,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Downson',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'InriaSans',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Renter',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'InriaSans',
                            color: Colors.grey.shade700),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: width * 0.145,
                    height: height * 0.062,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: AppColors.backgroundColorBlue, width: 2.0)),
                    child: Icon(
                      Iconsax.messages_2,
                      color: AppColors.seeAll,
                      size: 28,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.022,
                  ),
                  Container(
                    width: width * 0.145,
                    height: height * 0.062,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: AppColors.backgroundColorBlue, width: 2.0)),
                    child: Icon(
                      Iconsax.call,
                      color: AppColors.seeAll,
                      size: 28,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.014,
              ),
              Text('Name of the agency :',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'InriaSans',
                      color: Colors.grey.shade800)),
              Text('Location :',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'InriaSans',
                      color: Colors.grey.shade800)),
      ],
    );
  }
}