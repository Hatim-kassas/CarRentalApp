// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CarInfo extends StatefulWidget {
  const CarInfo({super.key});

  @override
  State<CarInfo> createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Car Info',
          style: TextStyle(
              fontSize: 21,
              fontFamily: 'InriaSans',
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Iconsax.people,
                      color: AppColors.seeAll,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      '5 Passages',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'InriaSans',
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                Row(
                  children: [
                    Icon(Icons.ac_unit_sharp, color: AppColors.seeAll),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      'Air conditioning',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'InriaSans',
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                Row(
                  children: [
                    Icon(Icons.usb, color: AppColors.seeAll),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      'Manual',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'InriaSans',
                      ),
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Iconsax.gas_station,
                      color: AppColors.seeAll,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      'Fuel info : ',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'InriaSans',
                          color: Colors.grey.shade600),
                    ),
                    Text(
                      'Full to Full',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'InriaSans',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                Row(
                  children: [
                    Icon(
                      Iconsax.car,
                      color: AppColors.seeAll,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      'Num Doors : ',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'InriaSans',
                          color: Colors.grey.shade600),
                    ),
                    Text(
                      '4 Doors',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'InriaSans',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
