import 'package:flutter/material.dart';
import 'package:vk/features/auth/widgets/button_login.dart';
import 'package:vk/features/auth/widgets/button_signup.dart';
import 'package:vk/ui_kit/images/images.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF0F3),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEFF0F3),
        title: const Row(
          children: [
            Image(
              image: Images.pawLogo,
            ),
            SizedBox(width: 8),
            Text(
              'Happy Pet',
              style: TextStyle(fontFamily: 'Ubuntu'),
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 114.0,
                top: 89,
              ),
              child: SizedBox(
                width: 368,
                height: 438,
                child: Image(image: Images.welcomeDog),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Text(
                    'Discover a world of joy and companionship at Happy Pet',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 30),
                  ),
                  SizedBox(height: 36),
                  ButtonLogin(),
                  SizedBox(height: 29),
                  ButtonSignUp(),
                  SizedBox(height: 72),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
