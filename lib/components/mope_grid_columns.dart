import 'package:flutter/material.dart';
import 'package:site_documentacao_api/components/titles/blank_grid_title.dart';
import 'package:site_documentacao_api/constants/colors.dart';
import 'package:site_documentacao_api/themes/light_theme.dart';

class MopeGridColumns extends StatelessWidget {
  const MopeGridColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 1570,
        child: Row(
          children: [
            const SizedBox(width: 250),
            const BlankGridTitle(flex: 1),
            Container(
                color: Theme.of(context) == nsj_light_theme
                    ? nsj_colors_primary_separator
                    : nsj_colors_primary_dark,
                height: 1700,
                width: 1),
            const BlankGridTitle(flex: 1),
            Container(
                color: Theme.of(context) == nsj_light_theme
                    ? nsj_colors_primary_separator
                    : nsj_colors_primary_dark,
                height: 1700,
                width: 1),
            const BlankGridTitle(flex: 1),
            Container(color: Colors.orange, height: 1700, width: 2),
            const BlankGridTitle(flex: 1),
            Container(
                color: Theme.of(context) == nsj_light_theme
                    ? nsj_colors_primary_separator
                    : nsj_colors_primary_dark,
                height: 1700,
                width: 1),
            const BlankGridTitle(flex: 1),
            Container(
                color: Theme.of(context) == nsj_light_theme
                    ? nsj_colors_primary_separator
                    : nsj_colors_primary_dark,
                height: 1700,
                width: 1),
            const BlankGridTitle(flex: 2),
            Container(
                color: Theme.of(context) == nsj_light_theme
                    ? nsj_colors_primary_separator
                    : nsj_colors_primary_dark,
                height: 1700,
                width: 1),
            const BlankGridTitle(flex: 1),
            Container(
                color: Theme.of(context) == nsj_light_theme
                    ? nsj_colors_primary_separator
                    : nsj_colors_primary_dark,
                height: 1700,
                width: 1),
            const BlankGridTitle(flex: 2),
          ],
        ));
  }
}
