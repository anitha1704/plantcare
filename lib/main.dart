import 'package:flutter/material.dart';
import 'package:planting_life/screens/about_app_page.dart';
import 'package:planting_life/screens/contact_us_page.dart';
import 'package:planting_life/widgets/cartpage.dart';
import 'package:planting_life/widgets/settings.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Care App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login',
      routes: {
        '/cart': (context) => const CartPage(),
        '/settings': (context) => const SettingsPage(),
        '/about': (context) => const AboutAppPage(),
        // Define AboutAppPage if not already defined
        '/contact': (context) => const ContactUsPage(),
        // Define ContactUsPage if not already defined
        '/home': (context) => HomeScreen(),
        // Define HomeScreen if not already defined
      },
      home: const Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}



