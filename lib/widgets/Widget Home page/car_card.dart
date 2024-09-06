// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:car_rantal_application/models/card.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 220, 220, 220),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [Image.network(car.image), Text(car.title)],
      ),
    );
  }
}
