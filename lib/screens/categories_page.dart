import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('home'),
            onTap: () {
              // Navigate to Category 1 screen or perform action
            },
          ),
          ListTile(
            title: const Text('cart'),
            onTap: () {
              // Navigate to Category 2 screen or perform action
            },
          ),
          ListTile(
            title: const Text('settings'),
            onTap: () {
              // Navigate to Category 3 screen or perform action
            },
          ),
          // Add more ListTiles as needed for additional categories
        ],
      ),
    );
  }
}
