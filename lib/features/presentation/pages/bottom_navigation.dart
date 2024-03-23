import 'package:flutter/material.dart';

import 'home_page.dart';

class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({Key? key}) : super(key: key);

  @override
  State<HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        // selectedItemColor: const Color.fromARGB(255, 236, 236, 236),
        unselectedItemColor: const Color.fromARGB(255, 171, 173, 187),
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff0B84FF),
            fontSize: 12.0),
        unselectedLabelStyle: const TextStyle(color: Color(0xffFFFFFF)),
        elevation: 30,

        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/nav_home.png")),
            activeIcon: ImageIcon(AssetImage("assets/images/nav_home.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/nav_search.png")),
            activeIcon: ImageIcon(AssetImage("assets/images/nav_search.png")),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/nav_tv.png")),
            activeIcon: ImageIcon(AssetImage("assets/images/nav_tv.png")),
            label: 'Live Tv',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/nav_profile.png")),
            activeIcon: ImageIcon(AssetImage("assets/images/nav_profile.png")),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
