import 'package:flutter/material.dart';
import 'package:meal_ui/screens/home_screen.dart';

class BaseScreenApp extends StatefulWidget {
  BaseScreenApp({Key? key}) : super(key: key);

  @override
  _BaseScreenAppState createState() => _BaseScreenAppState();
}

class _BaseScreenAppState extends State<BaseScreenApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: HomeScreen(),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Theme.of(context).backgroundColor,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/Page-1.png", width: 30),
              label: "data",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/party.png", width: 30),
              label: "data",
            ),
            BottomNavigationBarItem(
              icon: Icon(null),
              label: "data",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/coffee-cup.png", width: 30),
              label: "data",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/food.png", width: 30),
              label: "data",
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 10,
            color: Theme.of(context).canvasColor,
          ),
        ),
        child: FloatingActionButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/icons/buy.png"),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}



