import 'package:flutter/material.dart';
import 'package:site_documentacao_api/constants/colors.dart';
import 'package:site_documentacao_api/themes/light_theme.dart';

class MopeDivider extends StatelessWidget {
  const MopeDivider({
    super.key,
    this.color,
    this.height,
  });

  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        color: color ?? setColor(context),
        height: height ?? 1,
      ),
    );
  }

  setColor(context) {
    return Theme.of(context) == nsj_light_theme
        ? nsj_colors_primary_separator
        : nsj_colors_primary_dark;
  }
}
