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

class TabD extends StatefulWidget {
  @override
  State<TabD> createState() => _TabDState();
}

class _TabDState extends State<TabD> {
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
              'What to do:',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'secular',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
          child: GridView.count(
            crossAxisCount: 1,
            mainAxisSpacing: 10,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      'Land Activities',
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'secular',
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '''1- Hiking designated trails
2- Riding bikes
3- Searching for different plants, birds, and animals
4- Spelunking – the art of cave exploring
5- Photographing nature
6- Geocaching
''',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'secular',
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      'Water Activities',
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'secular',
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 15, 5, 10),
                      child: Text(
                        '''1- Fishing
2- Boating (i.e. kayaks, paddle boats, canoeing)
3- Swimming
4- Water skiing
5- Tubing''',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'secular',
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      'Sporting Activities',
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'secular',
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 10, 100, 10),
                      child: Text(
                        '''1- Volleyball
2- Rock climbing
3- Badminton
4- Bike riding
5- Football
6- Soccer or kickball
''',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'secular',
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      'Night-time Activities',
                      style: TextStyle(
                        fontSize: 33,
                        fontFamily: 'secular',
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 10, 70, 5),
                      child: Text(
                        '''1-Stargazing
2- Sing-songs
3- Tell scary stories
4- Play Truth-or-Dare
5- Flashlight tag
''',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'secular',
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
