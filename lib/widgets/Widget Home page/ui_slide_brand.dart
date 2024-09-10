import 'package:car_rantal_application/models/top_brands_class.dart';
import 'package:flutter/material.dart';

class UiSlideBrand extends StatelessWidget {
  final TopBrandsClass brands;
  const UiSlideBrand({super.key, required this.brands});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 12.0), // Space between items
      child: Column(
        children: [
          Container(
            width: width * 0.24,
            height: height * 0.086,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(brands.image),
                fit: BoxFit.contain,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            brands.name,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'InriaSans',
            ),
          ),
        ],
      ),
    );
  }
}
