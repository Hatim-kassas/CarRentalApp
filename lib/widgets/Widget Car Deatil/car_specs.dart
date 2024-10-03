// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CarSpecs extends StatefulWidget {
  const CarSpecs({super.key});

  @override
  State<CarSpecs> createState() => _CarSpecsState();
}

class _CarSpecsState extends State<CarSpecs> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Car Specs',
          style: TextStyle(
              fontSize: 21,
              fontFamily: 'InriaSans',
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          width: width * 0.3,
          height: height * 0.12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 1,
              color: AppColors.textgrey1
            )
          ),
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: ''
                )
              ]
            )

          )
        ),
      ],
    );
  }
}