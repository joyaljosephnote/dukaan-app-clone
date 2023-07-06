import 'package:flutter/material.dart';
import 'package:ui_design/screens/manage_store.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
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
  final screens = [
    const ManageStore(),
    const Payments(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Boxicons.bx_home_circle), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Boxicons.bx_home_circle), label: 'Home'),
        ],
      ),
    );
  }
}
