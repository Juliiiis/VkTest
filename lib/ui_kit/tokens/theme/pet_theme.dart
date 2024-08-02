import 'package:flutter/material.dart';
import 'package:vk/ui_kit/tokens/colors/pet_colors.dart';
import 'package:vk/ui_kit/tokens/typography/pet_typography.dart';

class PetTheme{
  static final ThemeData theme = ThemeData(
    textTheme: PetTypography.textTheme,
    buttonTheme: const ButtonThemeData(
      buttonColor: PetColors.button,
    ),
  );
}