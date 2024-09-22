// ignore_for_file: avoid_unnecessary_containers

import 'package:car_rantal_application/services/car_card_services.dart';
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/car_card.dart';
import 'package:flutter/material.dart';

class CardsWidget extends StatefulWidget {
  const CardsWidget({super.key});

  @override
  State<CardsWidget> createState() => _CardsWidgetState();
}

class _CardsWidgetState extends State<CardsWidget> {
  @override
  Widget build(BuildContext context) {
    final service = CarCardServices();

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Container(
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
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Two items per row
                            crossAxisSpacing:
                                4, // Space between items horizontally
                            mainAxisSpacing:
                                9, // Space between items vertically
                            childAspectRatio: 0.9, // Aspect ratio of each card
                          ),
                          itemCount: snapshot
                              .data.length, // Number of items in the grid
                          itemBuilder: (context, index) {
                            return SizedBox(
                              // width: width * 0.03,
                              child: CarCard(
                                car: snapshot.data[index],
                              ),
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
      ),
    );
  }
}
