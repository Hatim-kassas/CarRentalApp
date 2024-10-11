// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/screens/home_page.dart';
import 'package:car_rantal_application/screens/main_bottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                Container(
                  width: width * 0.32,
                  height: height * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.amber.shade600,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(3, 5),
                        )
                      ]),
                  child: Icon(
                    Icons.done,
                    size: 110,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(3, 5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text('Booking Successful',
                    style: TextStyle(fontFamily: 'InriaSans', fontSize: 26)),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  'Your booking has ben confirmed.\nHave a wonderful joureny.',
                  style: TextStyle(fontFamily: 'InriaSans', fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.2,),
                MaterialButton(
                    height: height * 0.05,
                    minWidth: width * 0.55,
                    color: Colors.grey.shade600,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Text('Booking details', style: TextStyle(fontFamily: 'InriaSans', fontSize: 18, color: Colors.white),),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => MainBottomnavigationbar(initialIndex: 1),
                        ),
                      );
                    }
                ),
                SizedBox(height: height * 0.01,),
                MaterialButton(
                    height: height * 0.05,
                    minWidth: width * 0.55,
                    color: Colors.grey.shade600,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Text('Done', style: TextStyle(fontFamily: 'InriaSans', fontSize: 18, color: Colors.white),),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => MainBottomnavigationbar(initialIndex: 0),
                        ),
                      );
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
