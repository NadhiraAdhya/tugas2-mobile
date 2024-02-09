import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tubes_mobile2_nadh/date_screen.dart';
import 'package:tubes_mobile2_nadh/list_screen.dart';
import 'package:tubes_mobile2_nadh/pages/list_alat.dart';
import 'package:tubes_mobile2_nadh/home_screen.dart';
import 'package:tubes_mobile2_nadh/book_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const BookScreen(),
    const DateScreen(),
    const ListAlat(),
    const ListScreen(),
    
    Container(color: Colors.indigo),
    const BookScreen(),
    const DateScreen(),
    const ListAlat(),
    const ListScreen(),
    
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alat Berat',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 61, 160, 218),
        elevation: 0,
        centerTitle: true,
      ),
      body: _screens[_index],
      bottomNavigationBar: CurvedNavigationBar(
        index: _index,
        height: 60,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.book, size: 30, color: Colors.white),
          Icon(Icons.quiz, size: 30, color: Colors.white),
          Icon(Icons.star, size: 30, color: Colors.white),
          Icon(Icons.search, size: 30, color: Colors.white),
        ],
        color: Color.fromARGB(255, 68, 171, 255),
        buttonBackgroundColor: const Color.fromARGB(255, 255, 77, 208),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
