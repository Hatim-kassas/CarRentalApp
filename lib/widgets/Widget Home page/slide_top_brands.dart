// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'dart:convert';
import 'package:car_rantal_application/models/class_slider_topBrands.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SlideTopBrands extends StatefulWidget {
  const SlideTopBrands({super.key});

  @override
  State<SlideTopBrands> createState() => _SlideTopBrandsState();
}

class _SlideTopBrandsState extends State<SlideTopBrands> {
  late Future<List<ClassSliderTopBrands>> futureCars;

  @override
  void initState() {
    super.initState();
    futureCars = loadCarData(); // Initialize futureCars here
  }

  Future<List<ClassSliderTopBrands>> loadCarData() async {
    try {
      final jsonString = await rootBundle.loadString('assets/json/cars.json');
      final List<dynamic> jsonData = jsonDecode(jsonString);
      print(jsonData); // Debug print
      return jsonData
          .map((json) => ClassSliderTopBrands.fromJson(json))
          .toList();
    } catch (e) {
      print('Error loading JSON: $e'); // Debug print
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: FutureBuilder<List<ClassSliderTopBrands>>(
        future: futureCars,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading data'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            return SizedBox(
              height: height * 0.2, // Adjust the height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final car = snapshot.data![index];
                  return Padding(
                    padding: const EdgeInsets.only(
                        right: 10.0), // Space between items
                    child: Column(
                      children: [
                        Container(
                          width: width * 0.29,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(car.logoCar),
                              fit: BoxFit.contain,
                            ),
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          car.nameOfCar,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'InriaSans',
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
