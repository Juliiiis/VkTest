import 'package:flutter/material.dart';

class MenuItems{
  static const String history = 'История';
  static const String writing = 'Запись';
  static const String photo = 'Фото';
  static const String clip = 'Клип';
  static const String broadcast = 'Трансляция';

  static const List<String> choice = <String>[
    history,
    writing,
    photo,
    clip,
    broadcast,
  ];
  static const Map<String, IconData> choiceIcons = <String, IconData>{
    history: Icons.photo_filter,
    writing: Icons.create,
    photo: Icons.crop_original,
    clip: Icons.whatshot,
    broadcast: Icons.radio_button_checked,
  };
}
