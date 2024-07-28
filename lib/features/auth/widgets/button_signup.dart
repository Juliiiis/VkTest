import 'package:flutter/material.dart';

class ButtonSignUp extends StatefulWidget {
  const ButtonSignUp({super.key});

  @override
  State<ButtonSignUp> createState() => _ButtonSignUpState();
}

class _ButtonSignUpState extends State<ButtonSignUp> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(446,50),
        backgroundColor:  Colors.amber[600],
      ),
      onPressed: (){},
      child: const Text('SIGNUP', style: TextStyle(color: Colors.black)),
    );
  }
}
