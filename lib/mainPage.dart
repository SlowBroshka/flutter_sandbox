import 'package:flutter/material.dart';

import 'restPage.dart';
import 'accountPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    RestPageWidget(Colors.greenAccent),
    AccountPageWidget(Colors.yellowAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.unfold_less_outlined), label: 'REST'),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.account_circle_outlined), label: 'Account')
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
