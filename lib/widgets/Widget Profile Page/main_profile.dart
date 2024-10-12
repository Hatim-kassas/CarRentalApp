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
            padding: EdgeInsets.symmetric(horizontal: 20.0), // Adjust padding as necessary
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    widget.icon,
                    SizedBox(
                        width: width * 0.1), // Add space between icon and text
                    Text(
                      widget.text,
                      style: TextStyle(fontFamily: 'InriaSans',fontSize: 20, color: Colors.black,),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, size: 20),
              ],
            ),
          ),
        ),
        SizedBox(
          height: height * 0.007,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Column(
            children: [
              SizedBox(
                width: width * 0.75, // Set the width of the Divider
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
