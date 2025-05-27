import 'package:flutter/material.dart';
import 'package:acm1/main.dart';
import 'package:acm1/screens/settings.dart';

class bookmarksettings extends StatefulWidget {
  const bookmarksettings({super.key});

  @override
  State<bookmarksettings> createState() => _bookmarksettingsState();
}

class _bookmarksettingsState extends State<bookmarksettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: themen(darktheme),
      ),
      backgroundColor: themeb(darktheme),
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Text(
                "General",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: themef(darktheme),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                title: Text(
                  "DarkMode",
                  style: TextStyle(color: themef(darktheme)),
                ),
                trailing: Switch(
                  value: darktheme,

                  onChanged: (value) {
                    setState(() {
                      darktheme = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  "FontSize (NewsBody)",
                  style: TextStyle(color: themef(darktheme)),
                ),
                trailing: FractionallySizedBox(
                  widthFactor: 0.38,
                  child: Slider(
                    value: fontsize,
                    min: 12.0,
                    max: 30.0,
                    onChanged: (value) {
                      setState(() {
                        fontsize = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
