import 'package:flutter/material.dart';
import 'package:restorant/pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Project(),
    );
  }
}

class Project extends StatefulWidget {
  Project({super.key});
  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  late PageController _controller;
  int _current = 0;
  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _current = value;
            _controller.jumpToPage(_current);
          });
        },
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: _current,
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 15),
        selectedLabelStyle: TextStyle(color: Colors.black, fontSize: 17),
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 30, 31, 32),
            icon: Icon(
              Icons.fastfood_sharp,
              size: 30,
              //color: Colors.grey,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 30, 31, 32),
            icon: Icon(
              Icons.shopping_basket_outlined,
              size: 30,
              //color: Colors.grey,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 30, 31, 32),
            icon: Icon(
              Icons.price_change_outlined,
              size: 30,
              //color: Colors.grey,
            ),
            label: 'Selected',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 30, 31, 32),
            icon: Icon(
              Icons.fastfood_sharp,
              size: 30,
              //color: Colors.grey,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 30, 31, 32),
            icon: Icon(
              Icons.person,
              size: 30,
              // color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: PageView(
        controller: _controller,
        onPageChanged: (value) {
          _current = value;
          setState(() {});
        },
        children: [
          Menu(),
          Container(
            color: Colors.white,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
