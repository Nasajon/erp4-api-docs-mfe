import 'package:flutter/material.dart';
import 'package:site_documentacao_api/components/mope/sections/titles/blank_grid_title.dart';
import 'package:site_documentacao_api/constants/colors.dart';
import 'package:site_documentacao_api/themes/light_theme.dart';

class MopeGridColumns extends StatelessWidget {
  const MopeGridColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 1582, minHeight: 800),
      child: Row(
        children: [
          const SizedBox(width: 250),
          const BlankGridTitle(flex: 1),
          Container(color: nsj_colors_primary_separator, width: 1),
          const BlankGridTitle(flex: 1),
          Container(color: nsj_colors_primary_separator, width: 1),
          const BlankGridTitle(flex: 1),
          Container(color: Colors.orange, width: 2),
          const BlankGridTitle(flex: 1),
          Container(color: nsj_colors_primary_separator, width: 1),
          const BlankGridTitle(flex: 1),
          Container(color: nsj_colors_primary_separator, width: 1),
          const BlankGridTitle(flex: 2),
          Container(color: nsj_colors_primary_separator, width: 1),
          const BlankGridTitle(flex: 1),
          Container(color: nsj_colors_primary_separator, width: 1),
          const BlankGridTitle(flex: 2),
        ],
      ),
    );
  }
}
