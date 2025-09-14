import 'package:flutter/material.dart';

import '../project/view/project_screen.dart';
import '../shop/view/shop_screen.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, "/add_money");
      //   },
      //   shape: const CircleBorder(),
      //   child: Container(
      //     width: 60,
      //     height: 60,
      //     decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       gradient: LinearGradient(
      //         colors: [
      //           theme.colorScheme.tertiary,
      //           theme.colorScheme.secondary,
      //           theme.colorScheme.primary,
      //         ],
      //         transform: const GradientRotation(pi / 4),
      //       ),
      //     ),
      //     child: Icon(CupertinoIcons.add, size: 30, color: Colors.white),
      //   ),
      // ),
      body: _selectedIndex == 0 ? ProjectScreen() : ShopScreen(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Project",
              icon: Icon(Icons.home),
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              label: "Shop",
              icon: Icon(Icons.settings),
              backgroundColor: Colors.black,
            ),
          ],
          onTap: _onItemTapped,
          selectedItemColor: theme.colorScheme.primary,
          unselectedItemColor: theme.colorScheme.outline,
          currentIndex: _selectedIndex,

          elevation: 3,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: theme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
