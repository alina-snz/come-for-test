import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _handleLogin() {
    if (_emailController.text.isEmpty) {
      // Show an error message or handle the empty email case
      print('Email field is empty');
      return;
    }
    // TODO: add validation
    print('Login tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email')), 
          TextField(controller: _passwordController, decoration: InputDecoration(labelText: 'Password')), 
          ElevatedButton(onPressed: _handleLogin, child: Text('Login')), 
        ],
      ),
    );
  }
}