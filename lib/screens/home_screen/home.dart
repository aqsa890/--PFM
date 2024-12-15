import 'package:flutter/material.dart';
import 'package:personal_finance_manager/screens/budget_screens/create_budget_popup.dart';
import 'package:personal_finance_manager/screens/home_screen/home_screen_content.dart';

import 'package:personal_finance_manager/screens/insight_screens/insight.dart';
import 'package:personal_finance_manager/screens/profile_screens/proflie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreenContent(),
    const NewBudgetPopUP(),
    const InsightScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 21, 221),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType
            .fixed, // This ensures the icons remain fixed
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 32,
            ),
            label: '      \n      ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pie_chart,
              size: 32,
            ),
            label: '      \n      ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart_rounded,
              size: 32,
            ),
            label: '      \n      ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 32,
            ),
            label: '      \n      ',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: _selectedIndex == 0
            ? Colors.white
            : const Color.fromARGB(255, 44, 21, 221),
        backgroundColor: _selectedIndex == 0
            ? const Color.fromARGB(255, 44, 21, 221)
            : Colors.white, // Matching color with Scaffold
        onTap: _onItemTapped,
      ),
    );
  }
}
