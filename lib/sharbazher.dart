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

class sharbazher extends StatefulWidget {
  const sharbazher({super.key});

  @override
  State<sharbazher> createState() => _sharbazherState();
}

class _sharbazherState extends State<sharbazher> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _iconBol ? _LightTheme : _Darktheme,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'sharbazher',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'rubik',
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
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
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          width: 370,
                          height: 380,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
                            child: Text(
                              '''Sharbazher is a great place for Camping and hiking,its 10 kilometers from sulaimaniyah, there are lots of mountains and hills that are usable for firing the camp fire and to set the shelter,also there are some caves that people can got and stay for the nights.''',
                              style: TextStyle(
                                fontSize: 28.3,
                                fontFamily: 'normal',
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: Container(
                          width: 170,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Icon(
                                  Icons.location_on,
                                  size: 28,
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Sitak',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'normal',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: Container(
                          width: 170,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 10, 0),
                                child: Icon(
                                  Icons.location_on,
                                  size: 28,
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Mawat',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'normal',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 180,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "images/sitak.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "images/mawat.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(85, 30, 0, 20),
                          child: Container(
                            width: 200,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              label: const Text(
                                'Go Back',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 40,
                                color: Colors.black87,
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white70,
                              ),
                            ),
                          ),
                        ),
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
