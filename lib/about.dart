import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textfild/main.dart';

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

class aboutUs extends StatefulWidget {
  const aboutUs({super.key});

  @override
  State<aboutUs> createState() => _aboutUsSetState();
}

class _aboutUsSetState extends State<aboutUs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBol ? _LightTheme : _Darktheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 35,
            ),
          ),
          title: const Text(
            'CREATORS OF THE APP',
            style: TextStyle(
              fontSize: 27,
              fontFamily: 'secular',
            ),
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
        body: Column(
          children: [
            Container(
              width: 500,
              height: 780,
              decoration: BoxDecoration(),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  GridView.count(
                    padding: const EdgeInsets.all(20),
                    mainAxisSpacing: 10,
                    crossAxisCount: 1,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "images/nabaz.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    'Name: Nabaz Esmail',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'secular',
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Age: 22 Years old',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'secular',
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'University of Sulaimany',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'secular',
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Department: IT',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'secular',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "images/hama.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    'Name: Muhammad Dlshad',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'secular',
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Age: 21 Years old',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'secular',
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'University of Sulaimany',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'secular',
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Department: IT',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'secular',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
