import 'package:flutter/material.dart';

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
    final Brightness brightness = Theme.of(context).brightness;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        color: color ?? setColor(brightness),
        height: height ?? 1.0,
      ),
    );
  }

  Color setColor(brightness) {
    return brightness == Brightness.light
        ? const Color.fromARGB(80, 0, 70, 155)
        : const Color.fromARGB(255, 69, 110, 161);
  }
}
