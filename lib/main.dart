// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ui_design/screens/additional_information.dart';
import 'package:ui_design/screens/dukaan_premium.dart';
import 'package:ui_design/screens/manage_store.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:ui_design/screens/order_page.dart';
import 'package:ui_design/screens/payments.dart';

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
  int _index = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Payments(),
    const OrderPage(),
    const DukanPremium(),
    const ManageStore(),
    const AdditionalInformation(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: constant_identifier_names
    const IconData grid_view_outlined =
        IconData(0xf0d7, fontFamily: 'MaterialIcons');
    return Scaffold(
      body: _widgetOptions.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Boxicons.bx_home_circle), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined), label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(Boxicons.bx_list_check), label: 'Manage'),
          BottomNavigationBarItem(
              icon: Icon(Boxicons.bx_user), label: 'Account'),
        ],
        currentIndex: _index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
