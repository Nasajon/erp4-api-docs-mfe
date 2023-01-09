import 'package:flutter/material.dart';
import 'package:site_documentacao_api/components/titles/blank_grid_title.dart';
import 'package:site_documentacao_api/constants/colors.dart';

class MopeGridColumns extends StatelessWidget {
  const MopeGridColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 1560,
        child: Row(
          children: [
            const SizedBox(width: 250),
            const BlanlGridTitle(flex: 1),
            Container(
                color: nsj_colors_primary_separator, height: 1700, width: 1),
            const BlanlGridTitle(flex: 1),
            Container(
                color: nsj_colors_primary_separator, height: 1700, width: 1),
            const BlanlGridTitle(flex: 1),
            Container(color: Colors.orange, height: 1700, width: 2),
            const BlanlGridTitle(flex: 1),
            Container(
                color: nsj_colors_primary_separator, height: 1700, width: 1),
            const BlanlGridTitle(flex: 1),
            Container(
                color: nsj_colors_primary_separator, height: 1700, width: 1),
            const BlanlGridTitle(flex: 2),
            Container(
                color: nsj_colors_primary_separator, height: 1700, width: 1),
            const BlanlGridTitle(flex: 1),
            Container(
                color: nsj_colors_primary_separator, height: 1700, width: 1),
            const BlanlGridTitle(flex: 2),
          ],
        ));
  }
}
