import 'package:flutter/material.dart';
import 'package:your_project/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _handleLogin() async {
    final email = _emailController.text;
    final password = _passwordController.text;
    final success = await AuthService.login(email, password);
    if (success) {
      print('Login successful');
    } else {
      print('Login failed');
    }
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