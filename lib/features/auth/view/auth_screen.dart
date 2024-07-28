import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset('assets/images/paw_logo.png'),
              const SizedBox(width: 8),
              const Text('Happy Pet', style: TextStyle(fontFamily: 'Ubuntu')),
            ],
          ),
        ),
    );
  }
}