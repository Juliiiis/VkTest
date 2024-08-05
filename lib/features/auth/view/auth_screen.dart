import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vk/ui_kit/images/images.dart';
import 'package:vk/ui_kit/tokens/icons/pet_icons.dart';

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
          const Align(
            alignment: Alignment.topRight,
            child: Image(
              image: Images.girlWithDog,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 60.h,
              top: 319.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Login'),
                const Text('Please sign in to continue.'),
                SizedBox(height: 61.h),
                const Row(
                  children: [
                    Image(
                      image: PetIcons.email,
                    ),
                    Text('EMAIL'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
