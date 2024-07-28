import 'package:flutter/material.dart';
import 'package:vk/router/routes.dart';
import 'package:vk/ui_kit/theme/theme.dart';

class MyAppVk extends StatelessWidget {
  const MyAppVk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      routes: routes,
    );
  }
}