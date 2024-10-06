// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String titleBtn ;
  final double fontBtn ;
  final Color colorBtn ;
  final Color colorTitle ;
  final VoidCallback onPressed ;
  const CustomButton({super.key, required this.titleBtn, required this.colorBtn, required this.onPressed, required this.colorTitle, required this.fontBtn});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
          child: MaterialButton(
            onPressed: onPressed,
            child: Text( titleBtn,
              style: TextStyle(
                color: colorTitle,
                fontSize: fontBtn,
                fontFamily: 'InriaSans',
              ),
            ),
            color: colorBtn,
            height: height * 0.065,
            minWidth: width,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        );
      }
}