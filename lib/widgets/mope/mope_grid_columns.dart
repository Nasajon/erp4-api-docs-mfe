import 'package:flutter/material.dart';
import 'package:site_documentacao_api/widgets/mope/blank_grid_title.dart';

class MopeGridColumns extends StatelessWidget {
  const MopeGridColumns({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 1545),
      child: Row(
        children: [
          const SizedBox(width: 250),
          const BlankGridTitle(flex: 1),
          Container(color: setColor(brightness), width: 1),
          const BlankGridTitle(flex: 1),
          Container(color: setColor(brightness), width: 1),
          const BlankGridTitle(flex: 1),
          Container(color: Colors.orange, width: 2),
          const BlankGridTitle(flex: 1),
          Container(color: setColor(brightness), width: 1),
          const BlankGridTitle(flex: 1),
          Container(color: setColor(brightness), width: 1),
          const BlankGridTitle(flex: 2),
          Container(color: setColor(brightness), width: 1),
          const BlankGridTitle(flex: 1),
          Container(color: setColor(brightness), width: 1),
          const BlankGridTitle(flex: 2),
        ],
      ),
    );
  }

  Color setColor(brightness) {
    return brightness == Brightness.light
        ? const Color.fromARGB(80, 0, 70, 155)
        : const Color.fromARGB(255, 69, 110, 161);
  }
}
