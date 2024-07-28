import 'package:flutter/material.dart';

class HeaderWidgetPassword extends StatelessWidget {
  const HeaderWidgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 16,
        color: Colors.grey
    );
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            'Введите пароль',
            style: TextStyle(
                fontSize: 25,
                color: Colors.black
            ),
          ),
          SizedBox(height: 10),
          Text('Укажите пароль, привязанный к почте',
            style: textStyle,
          ),
          Text('admin',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}