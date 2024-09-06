// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_unnecessary_containers

import 'package:car_rantal_application/services/car_card_services.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/app_bar_homepage.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/car_card.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/slide_top_brands.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/top_brands.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/top_ratedCars.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final service = CarCardServices();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            AppBarHomepage(),
            SizedBox(
              height: height * 0.03,
            ),
            TopBradsWidget(),
            SizedBox(
              height: height * 0.01,
            ),
            SlideTopBrands(),
            TopRatedcarsWidget(),
            FutureBuilder(
              future: service.getAll(),
              builder: (context, AsyncSnapshot snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return Text("No Connection");
                  case ConnectionState.waiting:
                  case ConnectionState.active:
                    return CircularProgressIndicator();
                  case ConnectionState.done:
                    if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else {
                      if (!snapshot.hasData) {
                        return Text("No Data");
                      } else {
                        return Expanded(
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, // Two items per row
                              crossAxisSpacing:
                                  10, // Space between items horizontally
                              mainAxisSpacing:
                                  10, // Space between items vertically
                              childAspectRatio:
                                  0.85, // Aspect ratio of each card
                            ),
                            itemCount: snapshot
                                .data.length, // Number of items in the grid
                            itemBuilder: (context, index) {
                              return CarCard(
                                car: snapshot.data[index],
                              );
                            },
                          ),
                        );
                      }
                    }
                }
              },
            )
          ],
        ));
  }
}
