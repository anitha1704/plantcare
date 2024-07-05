import 'package:flutter/material.dart';
// Example import

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Simulate login
            Navigator.pushReplacementNamed(context, '/home');
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
