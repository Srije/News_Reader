import 'package:acm1/main.dart';
import 'package:acm1/screens/newsbody.dart';
import 'package:acm1/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:acm1/news.dart';

class National extends StatefulWidget {
  const National({super.key});

  @override
  State<National> createState() => _NationalState();
}

class _NationalState extends State<National> {
  @override
  Widget build(BuildContext context) {
    List<News> items =
        dummyNews
            .where(
              (news) =>
                  ((news.long == isLong && !long || long) &&
                      (neww || !neww && (news.old != isNeww))) &&
                  news.category == "National",
            )
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('National News'),
        backgroundColor: themen(darktheme),
        actions: [
          SizedBox(
            height: 50,
            width: 50,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => settings()),
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
                                        (news.long == isLong && !long ||
                                            long) &&
                                        (neww || !neww && (news.old != isNeww)),
                                  )
                                  .toList()
                          : (homecategory == "Sports")
                          ? items =
                              dummyNews
                                  .where(
                                    (news) =>
                                        (news.category == "Sports") &&
                                        (news.long == isLong && !long ||
                                            long) &&
                                        (neww || !neww && (news.old != isNeww)),
                                  )
                                  .toList()
                          : items =
                              dummyNews
                                  .where(
                                    (news) =>
                                        (news.category == "Technology") &&
                                        (news.long == isLong && !long ||
                                            long) &&
                                        (neww || !neww && (news.old != isNeww)),
                                  )
                                  .toList();
                });
              },
              elevation: 0,
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.settings_rounded,
                color: (darktheme) ? Color(0xB0C8974F) : Color(0xFF070707),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: themeb(darktheme),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      color: themec(darktheme),
                      elevation: 6,
                      child: InkWell(
                        onTap: () {
                          count[(items[index].category == "National")
                              ? 0
                              : (items[index].category == "International")
                              ? 1
                              : (items[index].category == "Sports")
                              ? 2
                              : 3]++;
                          Navigator.of(context)
                              .push(
                                MaterialPageRoute(
                                  builder:
                                      (context) => newsbody(
                                        index: dummyNews.indexWhere(
                                          (news) =>
                                              news.title == items[index].title,
                                        ),
                                      ),
                                ),
                              )
                              .then((_) {
                                setState(() {
                                  long = long;
                                  isLong = isLong;
                                  isNeww = isNeww;
                                  neww = neww;
                                  darktheme = darktheme;
                                });
                              });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            items[index].img,
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                items[index].title,
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
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
