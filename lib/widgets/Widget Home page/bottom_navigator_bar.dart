import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({super.key});

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int _selectedIndex = 0; // Track the selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        height: 60,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Iconsax.copy_success), label: 'Booking'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favourites'),
          NavigationDestination(
              icon: Icon(
                Iconsax.profile_circle,
                size: 26,
              ),
              label: 'Profile'),
        ]);
  }
}
