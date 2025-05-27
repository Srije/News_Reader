import 'package:acm1/main.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Info"), backgroundColor: themen(darktheme)),
      backgroundColor: themeb(darktheme),
      body: Column(
        children: [
          Container(
            height: 230,
            child: Card(
              color: themec(darktheme),
              margin: EdgeInsets.symmetric(horizontal: 08, vertical: 12),
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left: 4,
                    child: Text(
                      style: TextStyle(fontSize: 18, color: themef(darktheme)),
                      "No. of National news read:",
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: Text(
                      style: TextStyle(fontSize: 18, color: themef(darktheme)),
                      "${count[0]}",
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 15,
                    child: Text(
                      style: TextStyle(fontSize: 18, color: themef(darktheme)),
                      "${count[1]}",
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 4,
                    child: Text(
                      style: TextStyle(fontSize: 18, color: themef(darktheme)),
                      "No. of International news read:",
                    ),
                  ),
                  Positioned(
                    top: 85,
                    left: 4,
                    child: Text(
                      style: TextStyle(fontSize: 18, color: themef(darktheme)),
                      "No. of Sports news read:",
                    ),
                  ),
                  Positioned(
                    top: 85,
                    right: 15,
                    child: Text(
                      style: TextStyle(fontSize: 18, color: themef(darktheme)),
                      "${count[2]}",
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 4,
                    child: Text(
                      style: TextStyle(fontSize: 18, color: themef(darktheme)),
                      "No. of Tech news read:",
                    ),
                  ),
                  Positioned(
                    top: 120,
                    right: 15,
                    child: Text(
                      style: TextStyle(fontSize: 18, color: themef(darktheme)),
                      "${count[3]}",
                    ),
                  ),
                  Positioned(
                    top: 155,
                    left: 4,
                    child: Text(
                      style: TextStyle(fontSize: 18, color: themef(darktheme)),
                      "No. of Bookmarked news:",
                    ),
                  ),
                  Positioned(
                    top: 155,
                    right: 15,
                    child: Text(
                      style: TextStyle(fontSize: 18, color: themef(darktheme)),
                      "${count[4]}",
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 2.5),
          SizedBox(
            width: MediaQuery.of(context).size.width - 30,
            child: Text(
              style: TextStyle(
                fontSize: 18,
                color: themef(darktheme),
                fontWeight: FontWeight.bold,
              ),
              'TIPS',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 30,
            child: Text(
              style: TextStyle(fontSize: 18, color: themef(darktheme)),
              '=> Use Unipage mode to Open Categories in the same page (Recommended)',
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 30,
            child: Text(
              style: TextStyle(fontSize: 18, color: themef(darktheme)),
              '=> Fonsize changes font size of newsbody',
            ),
          ),
        ],
      ),
    );
  }
}
