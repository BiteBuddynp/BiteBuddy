import 'package:flutter/material.dart';

import 'package:flutter_application_1/components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  // ignore: unused_field
  int _selectedindex = 0;

  //this method will update seleced index
  //when the user taps in the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  //pages to display
  // ignore: unused_field
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
