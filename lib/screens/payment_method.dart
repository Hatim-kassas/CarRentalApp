// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/models/card.dart';
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => PaymentMethodState();
}

class PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Center(
                      child: Text(
                    'Payment Method',
                    style: TextStyle(fontFamily: 'InriaSans', fontSize: 22),
                  )),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.85,
                width: width,
                decoration: BoxDecoration(
                    color: AppColors.backgroundColorBlue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tesla Model 3 - Electric',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'InriaSans',
                                fontSize: 18),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.amber,
                                size: 16,
                              ),
                              Text(
                                '4.8',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'InriaSans',
                                    fontSize: 14),
                              ),
                              Text(
                                "(140+ Review)",
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontFamily: 'InriaSans',
                                    fontSize: 16),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: width * 0.42,
                                  height: height * 0.09,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: AppColors.textgrey1)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: RichText(
                                              text: TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: 'Start\n',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'InriaSans',
                                                    color: Colors.white)
                                            ),
                                            TextSpan(
                                                text: '16 Dec 2024',
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    fontFamily: 'InriaSans',
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold)),
                                          ])),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  width: width * 0.42,
                                  height: height * 0.09,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: AppColors.textgrey1)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: RichText(
                                              text: TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: 'End\n',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'InriaSans',
                                                    color: Colors.white)),
                                            TextSpan(
                                                text: '18 Dec 2024',
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    fontFamily: 'InriaSans',
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold)),
                                          ])),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
