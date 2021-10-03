import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/routes/router.dart';
import 'package:flutter_auto_route/routes/router.gr.dart';
import 'package:flutter_auto_route/views/ui/fifth_page.dart';
import 'package:flutter_auto_route/views/ui/sixth_page.dart';
import 'package:flutter_auto_route/views/ui/third_page.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = [
    ThirdPage(),
    FifthPage(),
    SixthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ThirdRoute(),
        ThirdRoute(),
        ThirdRoute(),
      ],
    );
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
