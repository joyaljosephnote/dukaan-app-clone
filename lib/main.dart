// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ui_design/screens/account/account_page.dart';
import 'package:ui_design/screens/catalogue/catalogue_page.dart';
import 'package:ui_design/screens/home/home_page.dart';
import 'package:ui_design/screens/manage_store.dart';
import 'package:ui_design/screens/order/order_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue[800]),
      title: 'Dukaa App UI Design',
      debugShowCheckedModeBanner: false,
      home: const BottomTabBar(),
    );
  }
}

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _index = 2;

  final _pages = [
    const HomePage(),
    const OrderPage(),
    const CataloguePage(),
    const ManageStore(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: constant_identifier_names
    const IconData grid_view_outlined =
        IconData(0xf0d7, fontFamily: 'MaterialIcons');
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Order"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined), label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(Icons.layers_rounded), label: "Manage"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Account"),
        ],
      ),
    );
  }
}
