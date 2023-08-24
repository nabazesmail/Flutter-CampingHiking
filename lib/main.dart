import 'package:flutter/material.dart';
import 'package:textfild/TabA.dart';
import 'package:textfild/TabB.dart';
import 'package:textfild/TabC.dart';
import 'package:textfild/TabD.dart';
import 'package:textfild/emergencyContact.dart';
import 'package:textfild/main1.dart';

void main() => runApp(nabaz());

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

class nabaz extends StatefulWidget {
  const nabaz({super.key});

  @override
  State<nabaz> createState() => _nabazState();
}

class _nabazState extends State<nabaz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBol ? _LightTheme : _Darktheme,
      debugShowCheckedModeBanner: false,
      home: main1(),
    );
  }
}
