import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        fixedSize: Size(347.w,50.h),
        backgroundColor:  const Color(0xFFFF8E3C),
      ),
      onPressed: (){},
      child: const Text('SIGNUP', style: TextStyle(color: Colors.black)),
    );
  }
}
