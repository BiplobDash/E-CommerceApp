
import 'dart:async';

import 'package:first_project/bottom_nav_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.purple,
        ),

      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Timer(Duration(seconds: 3),
            () => Navigator.push(context, CupertinoPageRoute(
            builder: (_)=>BottomNavController())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('E-Commerce', style: TextStyle(
              fontSize: 35,
            ),),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

