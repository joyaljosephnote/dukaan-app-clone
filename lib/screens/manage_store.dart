import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageStore extends StatelessWidget {
  const ManageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 232, 232),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Title(
          color: Colors.white,
          child: const Text('Manage Store'),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.4,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 0, 8),
                  child: Icon(
                    CupertinoIcons.speaker_2_fill,
                    size: 50,
                    color: Colors.orange,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Marketing',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                  child: Text(
                    'Designs',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
