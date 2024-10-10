// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/screens/booking_page.dart';
import 'package:car_rantal_application/screens/favourites_page.dart';
import 'package:car_rantal_application/screens/home_page.dart';
import 'package:car_rantal_application/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainBottomnavigationbar extends StatefulWidget {
   final int initialIndex;
  const MainBottomnavigationbar({super.key, this.initialIndex = 0});

  @override
  State<MainBottomnavigationbar> createState() => _MainBottomnavigationbarState();
}

class _MainBottomnavigationbarState extends State<MainBottomnavigationbar> {

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
      print(index);
    });
  }

  List<Widget> screens = [
    HomePage(),
    BookingPage(),
    FavouritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 60,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Iconsax.copy_success), label: 'Booking'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favourites'),
          NavigationDestination(icon: Icon(Iconsax.profile_circle,size: 26,),
              label: 'Profile'),
        ]),
        body: screens[_selectedIndex],
    );
  }
}