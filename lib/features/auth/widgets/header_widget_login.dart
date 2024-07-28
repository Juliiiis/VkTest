import 'package:flutter/material.dart';

class HeaderWidgetLogin extends StatelessWidget {
  const HeaderWidgetLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 438,
            width: 316,
            child: Image.asset('assets/images/welcome_dog.png')
        ),
      ],
    );
  }
}
