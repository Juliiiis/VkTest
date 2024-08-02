import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


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
        fixedSize: Size(347.w,50.h),
        //backgroundColor: PetColors.button
      ),
        onPressed: _login,
        child: const Text('LOGIN', style: TextStyle(color: Colors.black)),
    );
  }
}
