import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textfild/TabA.dart';
import 'package:textfild/TabB.dart';
import 'package:textfild/TabC.dart';
import 'package:textfild/TabD.dart';
import 'package:textfild/about.dart';
import 'package:textfild/emergencyContact.dart';
import 'package:textfild/mountainSafety.dart';
import 'package:textfild/savedPathes.dart';

bool _iconBol = false;
IconData _iconlight = Icons.wb_sunny;
IconData _icondark = Icons.nights_stay;

ThemeData _Darktheme = ThemeData(
  brightness: Brightness.dark,
);
ThemeData _LightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.green,
);

class main1 extends StatefulWidget {
  const main1({super.key});

  @override
  State<main1> createState() => _main1State();
}

class _main1State extends State<main1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBol ? _LightTheme : _Darktheme,
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      '''Capming & Hiking''',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'rubik',
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => emergencyContact(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white12,
                      ),
                      child: ListTile(
                        title: Text(
                          "Emergency-Contact",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'secular',
                          ),
                        ),
                        leading: Icon(
                          Icons.emergency,
                          size: 40,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  margin: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: Divider(
                    thickness: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => mountainSafety(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ListTile(
                        title: Text(
                          "Mountain-Safety",
                          style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'secular',
                          ),
                        ),
                        leading: Icon(
                          Icons.safety_check_rounded,
                          size: 40,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  margin: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: Divider(
                    thickness: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => savedPathes(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ListTile(
                        title: Text(
                          "Saved-Pathes",
                          style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'secular',
                          ),
                        ),
                        leading: Icon(
                          Icons.search,
                          size: 40,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  margin: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: Divider(
                    thickness: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => aboutUs(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ListTile(
                        title: Text(
                          "About",
                          style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'secular',
                          ),
                        ),
                        leading: Icon(
                          Icons.info_outline_rounded,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Divider(
                    thickness: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {
                            setState(
                              () {
                                _iconBol = !_iconBol;
                              },
                            );
                          },
                          icon: Icon(_iconBol ? _iconlight : _icondark),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                        child: Container(
                          child: Text(
                            'change mode',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'secular',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 120, 5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red.withOpacity(0.9),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 5, 10),
                          child: IconButton(
                            onPressed: () => exit(0),
                            tooltip: 'Close app',
                            icon: Icon(
                              Icons.clear_outlined,
                              size: 38,
                            ),
                          ),
                        ),
                        Text(
                          'EXIT',
                          style: TextStyle(
                            fontSize: 27,
                            fontFamily: 'chakar',
                            letterSpacing: 3,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Camping & Hiking',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      fontFamily: 'chakar',
                    ),
                  ),
                ),
              ],
            ),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.image_search_rounded)),
                Tab(icon: Icon(Icons.info_outline_rounded)),
                Tab(icon: Icon(Icons.topic_outlined)),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      _iconBol = !_iconBol;
                    },
                  );
                },
                icon: Icon(_iconBol ? _iconlight : _icondark),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              TabA(),
              TabB(),
              TabC(),
              TabD(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int SelectIndex = 0;

  List page = [
    HomePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[SelectIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              SelectIndex = index;
            });
          },
          currentIndex: SelectIndex,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
          ]),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
