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
        appBar: AppBar(
          title: const Row(
            children: [
              Image(image: Images.pawLogo),
              SizedBox(width: 8),
              Text('Happy Pet', style: TextStyle(fontFamily: 'Ubuntu'),),
            ],
          ),
        ),
        body: const Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.,
            children: [
               //SizedBox(height: 80,),
              SizedBox(
                height: 438,
                  width: 368,
                  child: Image(image: Images.welcomeDog),
              ),
               Text(
                  'Discover a world of joy and companionship at Happy Pet',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 30
                ),
              ),
               SizedBox(height: 20),
               ButtonLogin(),
               SizedBox(height: 20),
               ButtonSignUp(),
            ],
          ),
        ),
    );
  }
}