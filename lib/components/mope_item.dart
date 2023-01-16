import 'package:flutter/material.dart';
import 'package:site_documentacao_api/constants/colors.dart';

class MopeItem extends StatelessWidget {
  const MopeItem(
      {super.key,
      required this.flex,
      required this.itemName,
      required this.onPressed,
      required this.color});

  final int flex;
  final String itemName;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: InkWell(
        onTap: onPressed,
        child: Card(
          color: color,
          margin: const EdgeInsets.all(12),
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Text(
                  itemName,
                  style:
                      TextStyle(fontSize: 12.0, color: nsj_colors_text_primary),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
