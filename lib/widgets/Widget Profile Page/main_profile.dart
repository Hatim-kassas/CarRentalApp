// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainProfile extends StatefulWidget {
  final Icon icon;
  final String text;
  final Function() onPress;
  const MainProfile({super.key, required this.icon, required this.text, required this.onPress});

  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: widget.onPress,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 12.0), // Adjust padding as necessary
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Icon(Iconsax.copy_success, size: 34),
                    widget.icon,
                    SizedBox(
                        width: width * 0.1), // Add space between icon and text
                    Text(
                      widget.text,
                      style: TextStyle(
                        fontFamily: 'InriaSans',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Icon(Iconsax.arrow_right_25, size: 30),
              ],
            ),
          ),
        ),
        SizedBox(
          height: height * 0.007,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            children: [
              SizedBox(
                width: width * 0.8, // Set the width of the Divider
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 1,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.012,
        ),
      ],
    );
  }
}
