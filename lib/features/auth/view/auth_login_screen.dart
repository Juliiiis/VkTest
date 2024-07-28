import 'package:flutter/material.dart';
import 'package:vk/features/auth/widgets/form_widget_login.dart';
import 'package:vk/features/auth/widgets/header_widget_login.dart';

class AuthLoginScreen extends StatefulWidget {
  const AuthLoginScreen({super.key});

  @override
  State<AuthLoginScreen> createState() => _AuthLoginScreenState();
}

class _AuthLoginScreenState extends State<AuthLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset('assets/images/paw_logo.png'),
              const SizedBox(width: 8),
              const Text('Happy Pet'),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              HeaderWidgetLogin(),
              FormWidgetLogin(),
            ],
          ),
        ),
    );
  }
}