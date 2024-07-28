import 'package:flutter/material.dart';

class HeaderWidgetLogin extends StatelessWidget {
  const HeaderWidgetLogin({super.key});

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
            'Вход ВКонтакте',
            style: TextStyle(
                fontSize: 25,
                color: Colors.black
            ),
          ),
          SizedBox(height: 10),
          Text('Введите телефон или почту, которые',
            style: textStyle,
          ),
          Text('привязаны к аккаунту',
            style: textStyle,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
