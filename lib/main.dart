import 'package:flutter/material.dart';
import 'package:vk/widgets/auth/auth_widget_login.dart';
import 'package:vk/widgets/auth/auth_widget_password.dart';
import 'package:vk/widgets/main_screen/main_screen_widget.dart';
import 'package:vk/widgets/profile/profile_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: {
       '/authLogin' : (context) => const AuthWidgetLogin(),
        '/authPassword' : (context) => const AuthWidgetPassword(),
        '/main_screen' : (context) => const MainScreenWidget(),
        '/profile' : (context) => const ProfileWidget(),
      },
      initialRoute: '/authLogin',
    );
  }
}






