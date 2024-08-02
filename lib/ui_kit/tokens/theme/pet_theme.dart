import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vk/ui_kit/tokens/colors/pet_colors.dart';
import 'package:vk/ui_kit/tokens/typography/pet_typography.dart';

class PetTheme {
  static final ThemeData theme = ThemeData(
    textTheme: PetTypography.textTheme,
    buttonTheme: const ButtonThemeData(
      buttonColor: PetColors.button,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(PetColors.button),
        foregroundColor: WidgetStateProperty.all<Color>(PetColors.text),
        textStyle: WidgetStateProperty.all<TextStyle?>(PetTypography.textTheme.titleLarge),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
            )
        ),
        minimumSize: WidgetStateProperty.all<Size?>(Size(double.infinity, 50.h)),

      ),
    ),
  );
}
