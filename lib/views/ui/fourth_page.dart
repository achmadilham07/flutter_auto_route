import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/views/ui/fifth_page.dart';
import 'package:flutter_auto_route/views/ui/first_page.dart';
import 'package:flutter_auto_route/views/ui/sixth_page.dart';

class FourthPage extends StatefulWidget {
  final String? query1;
  final String? query2;
  const FourthPage({
    Key? key,
    @QueryParam('username') this.query1,
    @QueryParam('password') this.query2,
  }) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = [
    FirstPage(),
    FifthPage(),
    SixthPage(),
  ];

  @override
  Widget build(BuildContext context) {
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
