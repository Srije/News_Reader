import 'package:flutter/material.dart';
import 'package:acm1/main.dart';
import 'package:acm1/news.dart';
import 'package:acm1/screens/settings.dart';
import 'package:acm1/screens/bookmarksettings.dart';

class newsbody extends StatefulWidget {
  final int index;
  const newsbody({super.key, required this.index});

  @override
  State<newsbody> createState() => _newsbodystate();
}

class _newsbodystate extends State<newsbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          dummyNews[widget.index].title,
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: themen(darktheme),
        actions: [
          IconButton(
            icon: Icon(
              Icons.bookmark_add,
              color: (darktheme) ? Color(0xFFC89C58) : Color(0xFF390460),
            ),
            onPressed: () {
              setState(() {
                if (bookmarks.contains(widget.index)) {
                  bookmarks.remove(widget.index);
                  count[4]--;
                }
                bookmarks.add(widget.index);
                count[4]++;
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Added News to bookmarks.'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: themeb(darktheme),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Card(
              color: themec(darktheme),
              elevation: 4,
              child: Column(
                children: [
                  dummyNews[widget.index].img, // This should be an Image widget
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      dummyNews[widget.index].title,
                      style: TextStyle(
                        color: themef(darktheme),
                        fontSize: fontsize,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Text(
                      "Category : ${dummyNews[widget.index].category}, ${dummyNews[widget.index].date}",
                      style: TextStyle(
                        color: themef(darktheme),
                        fontSize: fontsize,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 30,
                      height: 1,
                      color: themeb(!darktheme),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      dummyNews[widget.index].content,
                      style: TextStyle(
                        color: themef(darktheme),
                        fontSize: fontsize,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: SizedBox(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => bookmarksettings()),
            );
            setState(() {
              long = long;
              isLong = isLong;
              if (newpage) {
                selectedIndex = 0;
                homecategory = "Trending";
              }
              items =
                  (homecategory == "Trending")
                      ? (dummyNews.where(
                        (news) =>
                            (news.long == isLong && !long || long) &&
                            (neww || !neww && (news.old != isNeww)),
                      )).toList()
                      : (homecategory == "International")
                      ? dummyNews
                          .where(
                            (news) =>
                                (news.category == "International") &&
                                (news.long == isLong && !long || long) &&
                                (neww || !neww && (news.old != isNeww)),
                          )
                          .toList()
                      : (homecategory == "National")
                      ? items =
                          dummyNews
                              .where(
                                (news) =>
                                    (news.category == "National") &&
                                    (news.long == isLong && !long || long) &&
                                    (neww || !neww && (news.old != isNeww)),
                              )
                              .toList()
                      : (homecategory == "Sports")
                      ? items =
                          dummyNews
                              .where(
                                (news) =>
                                    (news.category == "Sports") &&
                                    (news.long == isLong && !long || long) &&
                                    (neww || !neww && (news.old != isNeww)),
                              )
                              .toList()
                      : items =
                          dummyNews
                              .where(
                                (news) =>
                                    (news.category == "Technology") &&
                                    (news.long == isLong && !long || long) &&
                                    (neww || !neww && (news.old != isNeww)),
                              )
                              .toList();
            });
          },
          elevation: 100,
          backgroundColor: themez(darktheme),
          child: Icon(Icons.settings),
        ),
      ),
    );
  }
}
