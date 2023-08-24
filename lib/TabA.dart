import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class TabA extends StatefulWidget {
  @override
  State<TabA> createState() => _TabAState();
}

class _TabAState extends State<TabA> {
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
              'Welcome :)',
              style: TextStyle(
                fontSize: 40,
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
                    "images/home.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 280, 50, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.green.withOpacity(0.8),
                ),
                width: 320,
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Explore &',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'chakar',
                          ),
                        ),
                        Text(
                          'Discover',
                          style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'rubik',
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
