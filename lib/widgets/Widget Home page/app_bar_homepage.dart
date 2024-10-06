// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print

import 'package:car_rantal_application/services/location_service.dart';
import 'package:car_rantal_application/utils/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class AppBarHomepage extends StatefulWidget {
  const AppBarHomepage({super.key});

  @override
  State<AppBarHomepage> createState() => _AppBarHomepageState();
}

class _AppBarHomepageState extends State<AppBarHomepage> {
  late double lat;
  late double long;
  String? city;
  String? country;

  final LocationService _locationService = LocationService();

  @override
  void initState() {
    super.initState();
    _fetchLocation();
    _listenForLocationChanges();
  }

  // Fetch the initial location
  Future<void> _fetchLocation() async {
    try {
      Position position = await _locationService.determinePosition();
      Placemark place = await _locationService.getPlaceFromCoordinates(
          position.latitude, position.longitude);
      setState(() {
        lat = position.latitude;
        long = position.longitude;
        city = place.locality;
        country = place.country;
      });
    } catch (e) {
      print(e); // Handle error
    }
  }

  // Listen for location changes and update the UI automatically
  void _listenForLocationChanges() {
    _locationService.getPositionStream().listen((Position position) async {
      Placemark place = await _locationService.getPlaceFromCoordinates(
          position.latitude, position.longitude);
      setState(() {
        lat = position.latitude;
        long = position.longitude;
        city = place.locality;
        country = place.country;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        width: width,
        height: height * 0.2,
        decoration: BoxDecoration(
            color: AppColors.backgroundColorBlue,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
      ),
      Padding(
        // padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        padding: const EdgeInsets.only(top: 55, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: Colors.white,
                  size: 28,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  city != null ? "$city, $country" : 'Fetching location...',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'InriaSans'),
                )
              ],
            ),
            // ICON NOTIFICATIONS
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
              width: width * 0.76,
              child: TextField(
                style: TextStyle(fontSize: 15),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    hintText: 'Search for cars and locations',
                    hintStyle: TextStyle(color: const Color.fromARGB(255, 141, 141, 141), fontSize: 15, fontFamily: 'InriaSans',),
                    filled: true,
                    fillColor: AppColors.searchInput,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 9.0, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 140, 255), width: 2.0),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 28,
                    )),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 100, left: 345),
        child: Row(
          children: [
            Container(
              height: height * 0.048,
              decoration: BoxDecoration(
                  color: AppColors.searchInput,
                  borderRadius: BorderRadius.circular(16)),
              child: IconButton(
                icon: Icon(
                  Icons.tune,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      )
    ]);
  }
}
