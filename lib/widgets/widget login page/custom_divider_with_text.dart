// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDividerWithText extends StatelessWidget {
  const CustomDividerWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 20, left: 4),
            child: Divider(
              height: 1,
              thickness: 2,
              color: AppColors.enabledBorder,
            ),
          ) 
        ),

        Text(
          'Or',
          style: TextStyle(
            fontSize: 22,
            color: Colors.grey.shade700
          ),
        ),

        Expanded(
          child: Container(
             margin: EdgeInsets.only(left: 20, right: 4),
            child: Divider(
              height: 1,
              thickness: 2,
              color: AppColors.enabledBorder,
            ),
          ) 
        )
      ],
    );
  }
}