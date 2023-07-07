import 'package:flutter/material.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({super.key});

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  @override
  Widget build(BuildContext context) {
    bool switchValue = false;
    List<Map<String, dynamic>> buttonData = [
      {
        'text': '   Share Dukaan App',
        'icon': Icons.share_outlined,
        'trailing': const Icon(Icons.arrow_forward_ios_rounded),
        'onPressed': () {
          // Logic for button
        },
      },
      {
        'text': '   Change Language',
        'icon': Icons.messenger_outline,
        'trailing': const Icon(Icons.arrow_forward_ios_rounded),
        'onPressed': () {
          // Logic for button
        },
      },
      {
        'text': '  WhatsApp Chat Support',
        'icon': Icons.call_outlined,
        'trailing': Switch(
          value: switchValue,
          onChanged: (bool newValue) {
            setState(() {
              switchValue = false;
            });
          },
          activeColor: Colors.amber,
          activeTrackColor: Colors.cyan,
          inactiveThumbColor: Colors.blueGrey.shade600,
          inactiveTrackColor: Colors.grey.shade400,
          splashRadius: 50.0,
        ),
        'onPressed': () {
          // Logic for button
        },
      },
      {
        'text': '   Privacy Policy',
        'icon': Icons.lock_outline_rounded,
        'onPressed': () {
          // Logic for button
        },
      },
      {
        'text': '   Rate Us',
        'icon': Icons.star_outline_rounded,
        'onPressed': () {
          // Logic for button
        },
      },
      {
        'text': '   Sign Out',
        'icon': Icons.logout,
        'onPressed': () {
          // Logic for button
        },
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Center(
          child: Text('Additional Information'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: buttonData.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = buttonData[index];
                    return ListTile(
                      leading: TextButton.icon(
                        onPressed: item['onPressed'],
                        icon: Icon(
                          item['icon'],
                          color: Colors.black87,
                        ),
                        label: Text(
                          item['text'],
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87),
                        ),
                      ),
                      trailing: item['trailing'],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Text(
                      'Version',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    Text(
                      '2.4.2',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
