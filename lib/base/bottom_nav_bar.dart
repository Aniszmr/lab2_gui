import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
    const BottomNavBar({super.key});

    @override
    State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
    int _selectedIndex = 0;

    static const List<Widget> _pages = [
    HomeScreen(),
    Center(child: Text('Search')),
    Center(child: Text('Tickets')),
    Center(child: Text('Profile')),
            ];

    void _onItemTapped(int index) {
        setState(() {
            _selectedIndex = index;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
                appBar: AppBar(
                title: const Text('My tickets'),
                centerTitle: true,
        ),
        body: _pages[_selectedIndex],
                bottomNavigationBar: BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket), label: 'Tickets'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      );
    }
}