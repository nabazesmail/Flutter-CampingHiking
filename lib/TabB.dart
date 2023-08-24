import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textfild/hawraman.dart';
import 'package:textfild/main.dart';
import 'package:textfild/piramagrun.dart';
import 'package:textfild/sharbazher.dart';

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

class TabB extends StatefulWidget {
  @override
  State<TabB> createState() => _TabBState();
}

class _TabBState extends State<TabB> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBol ? _LightTheme : _Darktheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text(
              'Where will u go today?',
              style: TextStyle(
                fontSize: 33,
                fontFamily: 'secular',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/tarik7.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GridView.count(
              padding: const EdgeInsets.all(10),
              mainAxisSpacing: 1,
              crossAxisCount: 1,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => hawraman(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "images/hawraman.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: 160,
                      height: 150,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 35, 0, 0),
                                child: Container(
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Hawraman',
                                        style: TextStyle(
                                          fontSize: 42,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'rubik',
                                          letterSpacing: 2,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 35,
                                        color: Colors.black87,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const sharbazher(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "images/sharbazher1.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: 160,
                      height: 150,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 35, 0, 0),
                                child: Container(
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Sharbazher',
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'rubik',
                                          letterSpacing: 2,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 35,
                                        color: Colors.black87,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const piramagrun(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "images/piramagrun1.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: 160,
                      height: 150,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 35, 0, 0),
                                child: Container(
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Piramagrun',
                                        style: TextStyle(
                                          fontSize: 39,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'rubik',
                                          letterSpacing: 2,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 35,
                                        color: Colors.black87,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
