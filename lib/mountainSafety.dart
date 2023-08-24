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

class mountainSafety extends StatefulWidget {
  const mountainSafety({super.key});

  @override
  State<mountainSafety> createState() => _mountainSafetySetState();
}

class _mountainSafetySetState extends State<mountainSafety> {
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
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Container(
            width: 500,
            height: 600,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: Text(
                        'Mountain safety rules',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'secular',
                        ),
                      ),
                    ),
                    Icon(Icons.security),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '''1- Temperature drops 4 degrees/1000′ of elevation gain.
2- Lightning kills, Lightning Safety Guidelines.
3- Watch for hypothermia.
4- Rockfall hazard? Wear a helmet.
5- Belay any climb with risk of injury.
6- Beware fast moving storms.
7- Altitude sickness (AMS) is aided only by descent.
8- Make note of return route.
9- If lost, bivouac.
10- Cell phone or GPS is not a substitute for preparation.
11- Be willing to turn back: the mountains don’t care.''',
                      style: TextStyle(
                        fontSize: 20,
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
