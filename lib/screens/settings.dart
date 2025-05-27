import 'package:flutter/material.dart';
import 'package:acm1/main.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

bool isLong = false;
bool long = true;
bool isNeww = false;
bool neww = true;
bool isChecked = true;
bool isChecked1 = true;
bool isChecked2 = true;
bool isChecked3 = true;
double fontsize = 18;

class _settingsState extends State<settings> {
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
                "\nGeneral",
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
              Text(
                "Filters",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: themef(darktheme),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(
              top: 176,
              left: (MediaQuery.of(context).size.width - 320) / 2 - 10,
              right: (MediaQuery.of(context).size.width - 320) / 2 - 10,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 100,
                  child: Container(
                    height: 140,
                    width: 1,
                    color: themeb(!darktheme),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  child: Container(
                    height: 140,
                    width: 1,
                    color: themeb(!darktheme),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 330,
                  child: Container(
                    height: 140,
                    width: 1,
                    color: themeb(!darktheme),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 10,
                  child: Container(
                    height: 1,
                    width: 320,
                    color: themeb(!darktheme),
                  ),
                ),
                Positioned(
                  top: 170,
                  left: 10,
                  child: Container(
                    height: 1,
                    width: 321,
                    color: themeb(!darktheme),
                  ),
                ),
                Positioned(
                  top: 115,
                  left: 10,
                  child: Container(
                    height: 1,
                    width: 321,
                    color: themeb(!darktheme),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  child: Container(
                    height: 1,
                    width: 320,
                    color: themeb(!darktheme),
                  ),
                ),
                Positioned(
                  top: 31,
                  left: 30,
                  child: Text(
                    "Filters",
                    style: TextStyle(color: themef(darktheme), fontSize: 16),
                  ),
                ),
                Positioned(
                  top: 31,
                  right: (MediaQuery.of(context).size.width - 320) / 2 + 64,
                  child: Text(
                    "Info",
                    style: TextStyle(color: themef(darktheme), fontSize: 16),
                  ),
                ),

                Positioned(
                  top: 62,
                  left: 55,
                  child: Text(
                    "Long",
                    style: TextStyle(color: themef(darktheme), fontSize: 12),
                  ),
                ),

                Positioned(
                  top: 62,
                  left: 15,
                  child: Text(
                    "Short",
                    style: TextStyle(color: themef(darktheme), fontSize: 12),
                  ),
                ),

                Positioned(
                  top: 72,
                  left: 5,
                  child: Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue!;
                          if (isChecked && isChecked1) {
                            long = true;
                          }
                          // else if (isChecked && !isChecked1) {
                          //   isLong = false;
                          //   long = false;}
                          else if (isChecked1 && !isChecked) {
                            isLong = true;
                            long = false;
                          } else if (!isChecked && !isChecked1) {
                            isChecked1 = true;
                            isLong = true;
                            long = false;
                          }
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 72,
                  left: 47,
                  child: Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: isChecked1,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked1 = newValue!;
                          if (isChecked && isChecked1) {
                            long = true;
                          } else if (isChecked && !isChecked1) {
                            isLong = false;
                            long = false;
                          }
                          // else if (isChecked1 && !isChecked) {
                          //   isLong = true;
                          //   long = false;}
                          else if (!isChecked && !isChecked1) {
                            isChecked = true;
                            isLong = false;
                            long = false;
                          }
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 115,
                  left: 55,
                  child: Text(
                    " Old",
                    style: TextStyle(color: themef(darktheme), fontSize: 12),
                  ),
                ),

                Positioned(
                  top: 115,
                  left: 15,
                  child: Text(
                    "New",
                    style: TextStyle(color: themef(darktheme), fontSize: 12),
                  ),
                ),

                Positioned(
                  top: 123,
                  left: 47,
                  child: Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: isChecked2,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked2 = newValue!;
                          if (isChecked2 && isChecked1) {
                            neww = true;
                          } //else if (isChecked2 && !isChecked3) {
                          //isNeww = false;
                          //neww = false;}
                          else if (isChecked3 && !isChecked2) {
                            isNeww = true;
                            neww = false;
                          } else if (!isChecked2 && !isChecked3) {
                            isChecked3 = true;
                            isNeww = true;
                            neww = false;
                          }
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 123,
                  left: 5,
                  child: Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: isChecked3,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked3 = newValue!;
                          if (isChecked2 && isChecked3) {
                            neww = true;
                          } else if (isChecked2 && !isChecked3) {
                            isNeww = false;
                            neww = false;
                          } //else if (isChecked3 && !isChecked2) {
                          // isNeww = true;
                          // neww = false;}
                          else if (!isChecked2 && !isChecked3) {
                            isChecked2 = true;
                            isNeww = false;
                            neww = false;
                          }
                        });
                      },
                    ),
                  ),
                ),

                Positioned(
                  top: 80,
                  left: 110,
                  child: Text(
                    style: TextStyle(color: themef(darktheme)),
                    (long)
                        ? "Displaying all length Articles"
                        : (!long && !isLong)
                        ? "Displaying only SHORT Articles"
                        : "Displaying only LONG Articles",
                  ),
                ),
                Positioned(
                  top: 131,
                  left: 110,
                  child: Text(
                    style: TextStyle(color: themef(darktheme)),
                    (neww)
                        ? "Displaying all time Articles"
                        : (!neww && !isNeww)
                        ? "Displaying only OLD Articles"
                        : "Displaying only NEW Articles",
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
