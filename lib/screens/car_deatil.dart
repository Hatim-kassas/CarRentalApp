// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:car_rantal_application/widgets/Widget%20Car%20Deatil/car_info.dart';
import 'package:car_rantal_application/widgets/Widget%20Car%20Deatil/car_specs.dart';
import 'package:car_rantal_application/widgets/Widget%20Car%20Deatil/profile_info.dart';
import 'package:car_rantal_application/widgets/Widget%20Car%20Deatil/title_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CarDeatil extends StatefulWidget {
  const CarDeatil({super.key});

  @override
  State<CarDeatil> createState() => _CarDeatilState();
}

class _CarDeatilState extends State<CarDeatil> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: width * 0.14,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500, // Divider color
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              TitleImageWidget(), // THIS PART OF CODE IMAGE OF CAR AND TITEL
              SizedBox(
                height: height * 0.01,
              ),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              ProfileInfo(), // THIS PART PROFILE INFORMATION AND CONTACT
              SizedBox(
                height: height * 0.01,
              ),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CarInfo(),// THIS PART Car Info
              SizedBox(
                height: height * 0.01,
              ),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CarSpecs(),
            ],
          ),
        ),
      ),
    );
  }
}
