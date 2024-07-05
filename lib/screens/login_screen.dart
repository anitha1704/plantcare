import 'package:flutter/material.dart';
// Example import

class LoginScreen extends StatelessWidget {
  const LoginScreen

  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Stack(
        children: <Widget>[
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/frontpage.jpg'),
                // Replace with your own image path
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Simulate login
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: const Text('Login'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
