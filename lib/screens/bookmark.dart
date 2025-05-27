import 'package:acm1/news.dart';
import 'package:acm1/screens/bookmarknews.dart';
import 'package:flutter/material.dart';
import 'package:acm1/main.dart';

class bookmark extends StatefulWidget {
  const bookmark({super.key});

  @override
  State<bookmark> createState() => _bookmarkState();
}

class _bookmarkState extends State<bookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookmarks"),
        backgroundColor: themen(darktheme),
      ),
      backgroundColor: themeb(darktheme),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: bookmarks.length,
              itemBuilder: (context, index1) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  color: themec(darktheme),
                  elevation: 6,
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          dummyNews[bookmarks[index1]].img,
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              dummyNews[bookmarks[index1]].title,
                              style: TextStyle(
                                color: themef(darktheme),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      bookmarknews(index: bookmarks[index1]),
                            ),
                          )
                          .then((_) {
                            setState(() {
                              darktheme = darktheme;
                            });
                          });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: themen(darktheme),
            foregroundColor: themef(darktheme),
            elevation: 4,
          ),
          child: Text(
            'Remove articles from bookmark',
            style: TextStyle(color: themef(false)),
          ),
          onPressed: () async {
            List<bool> _selected = List.generate(
              bookmarks.length,
              (_) => false,
            );
            await showDialog(
              context: context,
              builder: (context) {
                return StatefulBuilder(
                  builder: (context, setStateDialog) {
                    return AlertDialog(
                      title: Text('Select Articles to Remove'),
                      content: Container(
                        width: double.maxFinite,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: bookmarks.length,
                          itemBuilder: (context, index) {
                            return CheckboxListTile(
                              value: _selected[index],
                              title: Text(dummyNews[bookmarks[index]].title),
                              onChanged: (bool? value) {
                                setStateDialog(() {
                                  _selected[index] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                      actions: [
                        TextButton(
                          child: Text('Remove'),
                          onPressed: () {
                            setState(() {
                              for (int i = _selected.length - 1; i >= 0; i--) {
                                if (_selected[i]) {
                                  bookmarks.removeAt(i);
                                }
                              }
                            });
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
