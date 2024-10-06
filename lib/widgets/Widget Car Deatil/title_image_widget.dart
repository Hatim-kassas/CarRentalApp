// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:car_rantal_application/models/card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TitleImageWidget extends StatefulWidget {
  final Car car;
  const TitleImageWidget({super.key, required this.car});

  @override
  State<TitleImageWidget> createState() => _TitleImageWidgetState();
}

class _TitleImageWidgetState extends State<TitleImageWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          clipBehavior: Clip.hardEdge,
          child: Image.network(
            widget.car.image, // Use car image
            fit: BoxFit.cover,
            width: double.infinity,
            height: height * 0.23,
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.car.title,
                  style: TextStyle(
                      fontSize: 19,
                      fontFamily: 'InriaSans',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.006,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_outlined,
                      size: 16,
                      color: Colors.amber.shade700,
                    ),
                     Text('${widget.car.stars} (140+ Review)'),
                  ],
                )
              ],
            ),
            Spacer(),
            Icon(
              Iconsax.heart,
              size: 32,
            ),
          ],
        ),
      ],
    );
  }
}
