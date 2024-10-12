// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, avoid_unnecessary_containers

import 'package:car_rantal_application/services/top_brands_services.dart';
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:car_rantal_application/widgets/Widget%20Home%20page/ui_slide_brand.dart';
import 'package:flutter/material.dart';

class SlideTopBrands extends StatefulWidget {
  const SlideTopBrands({super.key});

  @override
  State<SlideTopBrands> createState() => _SlideTopBrandsState();
}

class _SlideTopBrandsState extends State<SlideTopBrands> {
  final service = TopBrandsServices();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
        padding: const EdgeInsets.only(left: 15,),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Brands',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'InriaSans'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                            color: AppColors.seeAll,
                            fontSize: 16,
                            fontFamily: 'InriaSans'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FutureBuilder(
              future: service.getAll(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error loading data'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No data available'));
                } else {
                  return SizedBox(
                    height: height * 0.14, // Adjust the height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return UiSlideBrand(
                          brands: snapshot.data[index],
                        );
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ));
  }
}
