import 'package:flutter/material.dart';

import 'package:healthy_better/view/home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int idx = 0;

  // list bottom navigation bar
  static const List<Widget> bottomNav = [
    const HomeScreen(),
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {}));
  ];

  //event saat button di-tap
  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNav[idx],
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: idx,
        selectedItemColor: Colors.black,
        onTap: onItemTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.fastfood_outlined,
                color: Colors.grey,
              ),
              label: " Food"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_martial_arts_outlined,
                color: Colors.grey,
              ),
              label: " Plans"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.file_present_outlined,
                color: Colors.grey,
              ),
              label: " Recipes"),
        ],
      ),
    );
  }
}
