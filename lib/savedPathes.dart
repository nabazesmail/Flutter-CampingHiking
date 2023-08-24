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

class savedPathes extends StatefulWidget {
  const savedPathes({super.key});

  @override
  State<savedPathes> createState() => _savedPathesSetState();
}

class _savedPathesSetState extends State<savedPathes> {
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
            'Drawer-Features',
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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
          child: Container(
            width: 500,
            height: 450,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: Text(
                        'Saved Pathes',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'secular',
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      size: 35,
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      '''Saved pathes are the ways to climb a mountain or to find a camping site easily, an experinced team went there and put some signs for others to find the way... ''',
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'secular',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
