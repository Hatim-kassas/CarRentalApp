// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class StartEndDateWidget extends StatefulWidget {
  const StartEndDateWidget({super.key});

  @override
  State<StartEndDateWidget> createState() => _StartEndDateWidgetState();
}

class _StartEndDateWidgetState extends State<StartEndDateWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
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
                            width: 1,
                            color: AppColors.textgrey1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: RichText(
                                text:
                            TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Start\n',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'InriaSans',
                                      color: Colors.white)),
                              TextSpan(
                                  text: '16 Dec 2024',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'InriaSans',
                                      color: Colors.white,
                                      fontWeight:
                                          FontWeight.bold)),
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
                            width: 1,
                            color: AppColors.textgrey1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: RichText(
                                text:
                                    TextSpan(children: <TextSpan>[
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
                                      fontWeight:
                                          FontWeight.bold)),
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
    );
  }
}