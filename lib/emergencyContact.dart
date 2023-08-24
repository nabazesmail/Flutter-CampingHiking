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

class emergencyContact extends StatefulWidget {
  const emergencyContact({super.key});

  @override
  State<emergencyContact> createState() => _emergencyContactShtState();
}

class _emergencyContactShtState extends State<emergencyContact> {
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
            height: 370,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: Text(
                        'Emergency Contact:  144',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'secular',
                        ),
                      ),
                    ),
                    Icon(Icons.call_outlined),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'forest Police are a department in most Countries they are ready and will come if anyone wants help or tries to huntdown any animal or trees...',
                      style: TextStyle(
                        fontSize: 26,
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
