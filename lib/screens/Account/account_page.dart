import 'package:flutter/material.dart';
import 'package:ui_design/screens/Account/additional_information.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 232, 232),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Title(
          color: Colors.white,
          child: const Text('Account'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          height: 50,
          color: const Color.fromARGB(255, 226, 109, 146),
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 15, 19, 23)),
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) {
                    return const Color.fromARGB(255, 11, 16, 19)
                        .withOpacity(0.04);
                  }
                  if (states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed)) {
                    return Colors.blue.withOpacity(0.12);
                  }
                  return null; // Defer to the widget's default.
                },
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdditionalInformation()));
            },
            child: const Text('Additional Information'),
          ),
        ),
      ),
    );
  }
}
