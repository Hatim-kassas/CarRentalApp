// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String titleBtn ;
  final Color colorBtn ;
  final Color colorTitle ;
  final void Function()? onPressed ;
  const CustomButton({super.key, required this.titleBtn, required this.colorBtn, required this.onPressed, required this.colorTitle});

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
                fontSize: 24
              ),
            ),
            color: colorBtn,
            height: height * 0.07,
            minWidth: width,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        );
      }
}