import 'package:flutter/material.dart';

class ButtonLogin extends StatefulWidget {
  const ButtonLogin({super.key});

  @override
  State<ButtonLogin> createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {

  void _login(){
    Navigator.of(context).pushNamed('/auth_screen');
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(446,50),
        backgroundColor:  Colors.amber[600],
      ),
        onPressed: _login,
        child: const Text('LOGIN', style: TextStyle(color: Colors.black),),
    );
  }
}
