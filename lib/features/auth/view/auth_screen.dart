import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vk/ui_kit/images/images.dart';

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
              SizedBox(
                height: 39.h,
                width: 39.w,
                child: const Image(
                  image: Images.pawLogo,
                ),
              ),
              SizedBox(width: 8.w),
              const Text(
                'Happy Pet',
              ),
            ],
          ),
        ),
      body: Stack(
        children: [
          Positioned(
            left: 187,
            right: 0,
            child: SizedBox(
              width: 368.w,
              height: 699.h,
              child: const Image(image: Images.girlWithDog),
            ),
          ),
          const Text('Login'),
        ],
      ),
    );
  }
}