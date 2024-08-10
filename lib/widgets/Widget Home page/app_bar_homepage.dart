// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:car_rantal_application/utils/app_colors.dart';

import 'package:flutter/material.dart';

class AppBarHomepage extends StatefulWidget {
  const AppBarHomepage({super.key});

  @override
  State<AppBarHomepage> createState() => _AppBarHomepageState();
}

class _AppBarHomepageState extends State<AppBarHomepage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        width: width,
        height: height * 0.24,
        decoration: BoxDecoration(
            color: AppColors.backgroundColorBlue,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: Colors.white,
                  size: 28,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  'Tangier, Morocco',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'InriaSans'),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 122, left: 20),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
              width: width * 0.76,
              child: TextField(
                style: TextStyle(fontSize: 16),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'Search for cars and locations',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  filled: true,
                  fillColor: AppColors.searchInput,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22.0),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 140, 255), width: 2.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
