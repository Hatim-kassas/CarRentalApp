// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TopBradsWidget extends StatefulWidget {
  const TopBradsWidget({super.key});

  @override
  State<TopBradsWidget> createState() => _TopBradsWidgetState();
}

class _TopBradsWidgetState extends State<TopBradsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Brands',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'InriaSans'),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: TextStyle(
                    color: AppColors.seeAll,
                    fontSize: 18,
                    fontFamily: 'InriaSans'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
