import 'package:flutter/material.dart';
import 'package:planting_life/screens/my_profile.dart'; // Import your profile page
import 'package:planting_life/screens/categories_page.dart'; // Import your categories page

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyProfilePage())); // Navigate to profile page
            },
          ),
          ListTile(
            title: const Text('Categories'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoriesPage())); // Navigate to categories page
            },
          ),
        ],
      ),
    );
  }
}
