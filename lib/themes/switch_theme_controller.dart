import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:site_documentacao_api/constants/colors.dart';
import 'package:site_documentacao_api/themes/theme_controller.dart';

class SwitchThemeController extends StatelessWidget {
  SwitchThemeController({super.key});

  final themeSwitch = ThemeController.instance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Switch(
        activeColor: nsj_colors_primary,
        dragStartBehavior: DragStartBehavior.start,
        value: themeSwitch.isLightTheme,
        onChanged: (value) {
          themeSwitch.switchTheme();
        },
      ),
    );
  }
}
