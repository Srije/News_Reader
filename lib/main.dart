import 'package:acm1/constants.dart';
import 'package:acm1/news.dart';
import 'package:acm1/screens/bookmark.dart';
import 'package:acm1/screens/international.dart';
import 'package:acm1/screens/newsbody.dart';
import 'package:acm1/screens/profile.dart';
import 'package:acm1/screens/settings.dart';
import 'package:acm1/screens/sports.dart';
import 'package:acm1/screens/technology.dart';
import 'package:acm1/screens/national.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<int> count = [0, 0, 0, 0, 0];
List<int> bookmarks = [];
bool darktheme = false;
bool newpage = true;
final List<String> categories = [
  "Trending",
  "National",
  "International",
  "Sports",
  "Technology",
];
int selectedIndex = 0;

Color themea(bool a) => a ? darkc : lightc; //appbar color
Color themen(bool a) => a ? darknc : lightnc; //drawer color
Color themez(bool a) => !a ? appiconl : appicond; //settings color
//IconData themei(bool a) => a ? Icons.dark_mode : Icons.light_mode; // icons
Color themeb(bool a) => a ? darkbg : lightbg; // color for background
Color themef(bool a) => a ? lightbg : fontc; //font color
Color themec(bool a) => !a ? lightcard : darkcard; //Newscard color
Color themes(bool a) => !a ? lightc : setc; //settings color

String homecategory = "Trending";
List<News> items =
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Reader',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(scrolledUnderElevation: 0),
      ),
      home: const MyHomePage(title: 'News'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

ScrollController _scrollController = ScrollController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News Reader",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: themen(darktheme),
          ),
        ),
        centerTitle: true,
        backgroundColor: themeb(darktheme),
        iconTheme: IconThemeData(color: themez(darktheme)),
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
              child: Icon(Icons.settings_rounded, color: themen((darktheme))),
            ),
          ),
        ],
      ),
      backgroundColor: themeb(darktheme),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Container(
          color: themeb(darktheme),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: themen(darktheme)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'News Reader',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    SizedBox(height: 60),
                    Text(
                      'Options',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                textColor: themef(darktheme),
                title: Text(
                  darktheme ? 'Enable Light Mode' : 'Enable Dark Mode',
                ),
                onTap: () {
                  setState(() {
                    darktheme = !darktheme;
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                textColor: themef(darktheme),
                title: Text('Bookmarks'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => bookmark()))
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
              ),
              ListTile(
                leading: Icon(Icons.add_circle),
                textColor: themef(darktheme),
                title: Text(
                  newpage ? 'Enable Unipage mode' : 'Enable Multi page mode',
                ),
                onTap: () {
                  setState(() {
                    newpage = !newpage;
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                textColor: themef(darktheme),
                title: Text('Info'),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => profile()));
                },
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: const EdgeInsets.fromLTRB(16, 30, 0, 16),
          //     child: Text(
          //       "Discover",
          //       style: TextStyle(
          //         fontSize: 26,
          //         fontWeight: FontWeight.bold,
          //         fontFamily: 'Roboto',
          //         color: themef(darktheme),
          //       ),
          //       textAlign: TextAlign.left,
          //     ),
          //   ),
          // ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _CategoryHeaderDelegate(
              child: Container(
                color: themeb(darktheme),
                padding: EdgeInsets.symmetric(vertical: 4),
                child: SizedBox(
                  height: 31,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final isSelected = selectedIndex == index;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                            homecategory = categories[index];
                            if (homecategory == "National") {
                              if (newpage) {
                                Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(
                                        builder: (context) => National(),
                                      ),
                                    )
                                    .then((_) {
                                      setState(() {
                                        long = long;
                                        isLong = isLong;
                                        isNeww = isNeww;
                                        neww = neww;
                                        items =
                                            (homecategory == "Trending")
                                                ? (dummyNews.where(
                                                  (news) =>
                                                      (news.long == isLong &&
                                                              !long ||
                                                          long) &&
                                                      (neww ||
                                                          !neww &&
                                                              (news.old !=
                                                                  isNeww)),
                                                )).toList()
                                                : (homecategory ==
                                                    "International")
                                                ? dummyNews
                                                    .where(
                                                      (news) =>
                                                          (news.category ==
                                                              "International") &&
                                                          (news.long ==
                                                                      isLong &&
                                                                  !long ||
                                                              long) &&
                                                          (neww ||
                                                              !neww &&
                                                                  (news.old !=
                                                                      isNeww)),
                                                    )
                                                    .toList()
                                                : (homecategory == "National")
                                                ? items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "National") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList()
                                                : (homecategory == "Sports")
                                                ? items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "Sports") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList()
                                                : items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "Technology") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList();
                                        darktheme = darktheme;
                                      });
                                    });
                              } else {
                                setState(() {
                                  items =
                                      (dummyNews.where(
                                        (news) =>
                                            (news.category == "National") &&
                                            (news.long == isLong && !long ||
                                                long) &&
                                            (neww ||
                                                !neww && (news.old != isNeww)),
                                      )).toList();
                                });
                              }
                            }
                            if (homecategory == "International") {
                              if (newpage) {
                                Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(
                                        builder: (context) => International(),
                                      ),
                                    )
                                    .then((_) {
                                      setState(() {
                                        long = long;
                                        isLong = isLong;
                                        isNeww = isNeww;
                                        neww = neww;
                                        items =
                                            (homecategory == "Trending")
                                                ? (dummyNews.where(
                                                  (news) =>
                                                      (news.long == isLong &&
                                                              !long ||
                                                          long) &&
                                                      (neww ||
                                                          !neww &&
                                                              (news.old !=
                                                                  isNeww)),
                                                )).toList()
                                                : (homecategory ==
                                                    "International")
                                                ? dummyNews
                                                    .where(
                                                      (news) =>
                                                          (news.category ==
                                                              "International") &&
                                                          (news.long ==
                                                                      isLong &&
                                                                  !long ||
                                                              long) &&
                                                          (neww ||
                                                              !neww &&
                                                                  (news.old !=
                                                                      isNeww)),
                                                    )
                                                    .toList()
                                                : (homecategory == "National")
                                                ? items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "National") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList()
                                                : (homecategory == "Sports")
                                                ? items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "Sports") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList()
                                                : items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "Technology") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList();
                                        darktheme = darktheme;
                                      });
                                    });
                              } else {
                                setState(() {
                                  items =
                                      dummyNews
                                          .where(
                                            (news) =>
                                                (news.category ==
                                                    "International") &&
                                                (news.long == isLong && !long ||
                                                    long) &&
                                                (neww ||
                                                    !neww &&
                                                        (news.old != isNeww)),
                                          )
                                          .toList();
                                });
                              }
                            }
                            if (homecategory == "Sports") {
                              if (newpage) {
                                Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(
                                        builder: (context) => Sports(),
                                      ),
                                    )
                                    .then((_) {
                                      setState(() {
                                        long = long;
                                        isLong = isLong;
                                        isNeww = isNeww;
                                        neww = neww;
                                        items =
                                            (homecategory == "Trending")
                                                ? (dummyNews.where(
                                                  (news) =>
                                                      (news.long == isLong &&
                                                              !long ||
                                                          long) &&
                                                      (neww ||
                                                          !neww &&
                                                              (news.old !=
                                                                  isNeww)),
                                                )).toList()
                                                : (homecategory ==
                                                    "International")
                                                ? dummyNews
                                                    .where(
                                                      (news) =>
                                                          (news.category ==
                                                              "International") &&
                                                          (news.long ==
                                                                      isLong &&
                                                                  !long ||
                                                              long) &&
                                                          (neww ||
                                                              !neww &&
                                                                  (news.old !=
                                                                      isNeww)),
                                                    )
                                                    .toList()
                                                : (homecategory == "National")
                                                ? items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "National") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList()
                                                : (homecategory == "Sports")
                                                ? items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "Sports") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList()
                                                : items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "Technology") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList();
                                        darktheme = darktheme;
                                      });
                                    });
                              } else {
                                setState(() {
                                  items =
                                      dummyNews
                                          .where(
                                            (news) =>
                                                (news.category == "Sports") &&
                                                (news.long == isLong && !long ||
                                                    long) &&
                                                (neww ||
                                                    !neww &&
                                                        (news.old != isNeww)),
                                          )
                                          .toList();
                                });
                              }
                            }
                            if (homecategory == "Trending") {
                              setState(() {
                                items =
                                    dummyNews
                                        .where(
                                          (news) =>
                                              ((news.long == isLong && !long) ||
                                                  long) &&
                                              (neww ||
                                                  (!neww &&
                                                      (news.old != isNeww))),
                                        )
                                        .toList();
                              });
                            }
                            if (homecategory == "Technology") {
                              if (newpage) {
                                Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(
                                        builder: (context) => Technology(),
                                      ),
                                    )
                                    .then((_) {
                                      setState(() {
                                        long = long;
                                        isLong = isLong;
                                        isNeww = isNeww;
                                        neww = neww;
                                        items =
                                            (homecategory == "Trending")
                                                ? (dummyNews.where(
                                                  (news) =>
                                                      (news.long == isLong &&
                                                              !long ||
                                                          long) &&
                                                      (neww ||
                                                          !neww &&
                                                              (news.old !=
                                                                  isNeww)),
                                                )).toList()
                                                : (homecategory ==
                                                    "International")
                                                ? dummyNews
                                                    .where(
                                                      (news) =>
                                                          (news.category ==
                                                              "International") &&
                                                          (news.long ==
                                                                      isLong &&
                                                                  !long ||
                                                              long) &&
                                                          (neww ||
                                                              !neww &&
                                                                  (news.old !=
                                                                      isNeww)),
                                                    )
                                                    .toList()
                                                : (homecategory == "National")
                                                ? items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "National") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList()
                                                : (homecategory == "Sports")
                                                ? items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "Sports") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList()
                                                : items =
                                                    dummyNews
                                                        .where(
                                                          (news) =>
                                                              (news.category ==
                                                                  "Technology") &&
                                                              (news.long ==
                                                                          isLong &&
                                                                      !long ||
                                                                  long) &&
                                                              (neww ||
                                                                  !neww &&
                                                                      (news.old !=
                                                                          isNeww)),
                                                        )
                                                        .toList();
                                        darktheme = darktheme;
                                      });
                                    });
                              } else {
                                setState(() {
                                  items =
                                      dummyNews
                                          .where(
                                            (news) =>
                                                (news.category ==
                                                    "Technology") &&
                                                (news.long == isLong && !long ||
                                                    long) &&
                                                (neww ||
                                                    !neww &&
                                                        (news.old != isNeww)),
                                          )
                                          .toList();
                                });
                              }
                            }
                            if (newpage) {
                              homecategory = "Trending";
                              selectedIndex = 0;
                              items =
                                  dummyNews
                                      .where(
                                        (news) =>
                                            ((news.long == isLong && !long) ||
                                                long) &&
                                            (neww ||
                                                (!neww &&
                                                    (news.old != isNeww))),
                                      )
                                      .toList();
                            } else {
                              _scrollController.animateTo(
                                0.0,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                categories[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: isSelected ? themef(darktheme) : greyc,
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                height: 2,
                                width: 50,
                                color:
                                    isSelected
                                        ? themef(darktheme)
                                        : Colors.transparent,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(height: 3, color: themeb(darktheme)),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
                                    (news) => news.title == items[index].title,
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
            }, childCount: items.length),
          ),
        ],
      ),
    );
  }
}

class _CategoryHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  _CategoryHeaderDelegate({required this.child});

  @override
  double get minExtent => 39.0;
  @override
  double get maxExtent => 39.0;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
