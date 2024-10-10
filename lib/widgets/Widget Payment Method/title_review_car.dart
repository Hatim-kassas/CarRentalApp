// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:car_rantal_application/models/card.dart';
import 'package:flutter/material.dart';

class TitleReviewCar extends StatefulWidget {
  final Car car;
  const TitleReviewCar({super.key, required this.car});

  @override
  State<TitleReviewCar> createState() => _TitleReviewCarState();
}

class _TitleReviewCarState extends State<TitleReviewCar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.car.title,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'InriaSans', fontSize: 18),
            ),
            Row(
              children: [
                Icon(
                  Icons.star_rounded,
                  color: Colors.amber,
                  size: 16,
                ),
                Text(
                  widget.car.stars.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'InriaSans',
                      fontSize: 13),
                ),
                Text(
                  ' (' + widget.car.review.toString() + '+Review)',
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontFamily: 'InriaSans',
                      fontSize: 13),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
