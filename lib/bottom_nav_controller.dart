

import 'package:first_project/Pages/account.dart';
import 'package:first_project/Pages/add.dart';
import 'package:first_project/Pages/chat.dart';
import 'package:first_project/Pages/home.dart';
import 'package:first_project/Pages/myAds.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;

  final _pages = [
    Home(),
    myAds(),
    Add(),
    Chat(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        elevation: 5,
        currentIndex: _currentIndex,
        onTap: (value){

          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.home_outlined,
          ),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.shopping_basket,
          ),
            label: "My Ads",
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.add_circle_outline,
          ),
            label: "Add",
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.chat_outlined,
          ),
            label: "Chat",
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.person_outline,
          ),
            label: "Account",
          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}

