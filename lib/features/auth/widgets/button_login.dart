import 'package:flutter/material.dart';
import 'package:vk/ui_kit/controls/buttons/normal_button.dart';


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
    return NormalButton(title: 'LOGIN', onTap: _login);
  }
}
