import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            // Edit Profile
            Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.black))),
              padding: EdgeInsets.all(0),
              child: ListTile(
                title: Text("Edit Profile", style: TextStyle(fontSize: 15),),
                tileColor: Colors.white,
                onTap: () {
                  // Tap Function
                },
              ),
            ),
            // My Goals
            Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.black))),
              padding: EdgeInsets.all(0),
              child: ListTile(
                title: Text("My Goals", style: TextStyle(fontSize: 15),),
                tileColor: Colors.white,
                onTap: () {
                  // Tap Function
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
