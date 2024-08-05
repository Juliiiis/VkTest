import 'package:flutter/material.dart';
import 'package:vk/ui_kit/controls/buttons/normal_button.dart';

class ButtonSignUp extends StatefulWidget {
  const ButtonSignUp({super.key});

  @override
  State<ButtonSignUp> createState() => _ButtonSignUpState();
}

class _ButtonSignUpState extends State<ButtonSignUp> {
  @override
  Widget build(BuildContext context) {
    return NormalButton.outlined(title: 'SIGNUP', onTap: () {});
  }
}
