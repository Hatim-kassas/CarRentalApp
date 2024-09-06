// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TopRatedcarsWidget extends StatefulWidget {
  const TopRatedcarsWidget({super.key});

  @override
  State<TopRatedcarsWidget> createState() => _TopRatedcarsWidgetState();
}

class _TopRatedcarsWidgetState extends State<TopRatedcarsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Rated Cars',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'InriaSans'),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: TextStyle(
                    color: AppColors.seeAll,
                    fontSize: 16,
                    fontFamily: 'InriaSans'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
