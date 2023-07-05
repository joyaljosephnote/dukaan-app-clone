import 'package:flutter/material.dart';

class ManageStore extends StatelessWidget {
  const ManageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Title(
          color: Colors.white,
          child: const Text('Manage Store'),
        ),
        centerTitle: true,
      ),
    );
  }
}
