import 'package:flutter/material.dart';


class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.green,
      onTap: (int index) {
        switch (index) {
          case 0:
          // Navigate to home page (if needed)
            Navigator.pushNamed(context, '/home');
            break;
          case 1:
          // Navigate to cart page
            Navigator.pushNamed(context, '/cart');
            break;
          case 2:
          // Navigate to settings page
            Navigator.pushNamed(context, '/settings');
            break;
        }
      },
    );
  }
}
// Handle bottom menu item tap



