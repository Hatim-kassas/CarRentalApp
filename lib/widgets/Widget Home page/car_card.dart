// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings

import 'package:car_rantal_application/models/card.dart';
import 'package:car_rantal_application/screens/car_deatil.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CarDeatil(car: car),
          )
        );
      },
      child: Card(
        elevation: 5,
        color: const Color.fromARGB(255, 231, 231, 231),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  car.image,
                  fit: BoxFit.cover,
                  height: height * 0.14,
                  width: double.infinity,
                )),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    car.title,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        car.price.toString() + " MAD",
                        style:
                            TextStyle(fontSize: 14, color: Colors.grey.shade700),
                      ),
                      Text(
                        " / " + car.date + " Day",
                        style:
                            TextStyle(fontSize: 14, color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Colors.amber,
                        size: 16,
                      ),
                      Text(car.stars.toString()),
                      Text("(" + car.review.toString() + " + Review)")
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
