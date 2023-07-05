import 'package:flutter/material.dart';
import 'package:ui_design/screens/manage_store.dart';

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
      home: const ManageStore(),
    );
  }
}
