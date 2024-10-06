// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CarSpecs extends StatefulWidget {
  const CarSpecs({super.key});

  @override
  State<CarSpecs> createState() => _CarSpecsState();
}

class _CarSpecsState extends State<CarSpecs> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Car Specs',
          style: TextStyle(
              fontSize: 21,
              fontFamily: 'InriaSans',
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                Container(
                width: width * 0.27,
                height: height * 0.10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    color: AppColors.textgrey1
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Max. Power\n',
                                style: TextStyle(fontSize: 17,fontFamily: 'InriaSans',color: Colors.grey.shade700, fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: '320\n',
                                style: TextStyle(fontSize: 17,fontFamily: 'InriaSans',color: const Color.fromARGB(255, 0, 0, 0))
                              ),
                              TextSpan(
                                text: 'hp\n',
                                style: TextStyle(fontSize: 17,fontFamily: 'InriaSans',color: Colors.grey.shade700)
                              ),
                            ]
                          )
                        ),
                      ),
                    ],
                  ),
                )
                ),
            Container(
              width: width * 0.27,
              height: height * 0.10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: AppColors.textgrey1
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '0-60mph\n',
                              style: TextStyle(fontSize: 17,fontFamily: 'InriaSans',color: Colors.grey.shade700, fontWeight: FontWeight.bold)
                            ),
                            TextSpan(
                              text: '5.4\n',
                              style: TextStyle(fontSize: 17,fontFamily: 'InriaSans',color: const Color.fromARGB(255, 0, 0, 0))
                            ),
                            TextSpan(
                              text: 'sec\n',
                              style: TextStyle(fontSize: 17,fontFamily: 'InriaSans',color: Colors.grey.shade700)
                            ),
                          ]
                        )
                      ),
                    ),
                  ],
                ),
              )
            ),
            Container(
              width: width * 0.27,
              height: height * 0.10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: AppColors.textgrey1
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Top Speed\n',
                              style: TextStyle(fontSize: 17,fontFamily: 'InriaSans',color: Colors.grey.shade700, fontWeight: FontWeight.bold)
                            ),
                            TextSpan(
                              text: '187\n',
                              style: TextStyle(fontSize: 17,fontFamily: 'InriaSans',color: const Color.fromARGB(255, 0, 0, 0))
                            ),
                            TextSpan(
                              text: 'hp\n',
                              style: TextStyle(fontSize: 17,fontFamily: 'InriaSans',color: Colors.grey.shade700)
                            ),
                          ]
                        )
                      ),
                    ),
                  ],
                ),
              )
            ),
          ],
        )

      ],
    );
  }
}