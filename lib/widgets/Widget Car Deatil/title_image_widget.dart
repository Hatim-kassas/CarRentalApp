// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TitleImageWidget extends StatefulWidget {
  const TitleImageWidget({super.key});

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
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  'assets/img/images.jfif',
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: height * 0.25,
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
                        'Test Tilte Tesla Model 3 - Electric',
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
                          Text('4.8 (140+Review)'),
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