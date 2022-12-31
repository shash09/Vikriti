import 'package:flutter/material.dart';
import 'package:vikriti_2/pages/home_page.dart';
import 'package:vikriti_2/pages/theory_page.dart';
import 'package:vikriti_2/pages/info_page.dart';
import 'package:vikriti_2/pages/animation_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Nirvana(),
  ));
}

class Nirvana extends StatefulWidget {
  const Nirvana({Key? key}) : super(key: key);

  @override
  State<Nirvana> createState() => _NirvanaState();
}

class _NirvanaState extends State<Nirvana> {

  int _currentIndex = 1;
  final screens = [

    const TheoryPage(),
    const HomePage(),
    const AnimationPage(),
    const InfoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vikriti'),
          
    ),
      body: screens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: const Icon(Icons.remove_red_eye_outlined),
            label: 'Theory',
            backgroundColor: Colors.lightBlue.shade400,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.all_inclusive),
            label: 'Animation',
            backgroundColor: Colors.lightBlue.shade600,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle),
            label: 'Info',
            backgroundColor: Colors.lightBlue.shade700,
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        onTap:  (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
