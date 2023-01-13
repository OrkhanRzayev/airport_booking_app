import 'package:flutter/material.dart';
import 'package:training_app/screens/home_screen.dart';
import 'package:training_app/screens/profile_screen.dart';
import 'package:training_app/screens/search_screen.dart';
import 'package:training_app/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onTapItem,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xff526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                activeIcon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                activeIcon: Icon(Icons.search_outlined),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplane_ticket_outlined,
                ),
                activeIcon: Icon(Icons.airplane_ticket_sharp),
                label: 'Tickets'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outlined,
                ),
                activeIcon: Icon(Icons.person),
                label: 'Profile')
          ]),
    );
  }

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
