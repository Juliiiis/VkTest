import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vk/features/auth/widgets/button_login.dart';
import 'package:vk/features/auth/widgets/button_signup.dart';
import 'package:vk/ui_kit/images/images.dart';
import 'package:vk/ui_kit/tokens/colors/pet_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PetColors.background,
      appBar: AppBar(
        backgroundColor: PetColors.background,
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
            Text(
              'Happy Pet',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 114.0.r,
              top: 86.r,
            ),
            child: SizedBox(
              width: 368.w,
              height: 438.h,
              child: const Image(image: Images.welcomeDog),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.r),
            child: Column(
              children: [
                Text(
                  'Discover a world of joy and companionship at Happy Pet',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 29.h),
                const ButtonLogin(),
                SizedBox(height: 29.h),
                const ButtonSignUp(),
                //SizedBox(height: 72.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
