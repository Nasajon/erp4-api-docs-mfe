import 'package:flutter/material.dart';

class BlankGridTitle extends StatelessWidget {
  const BlankGridTitle({
    super.key,
    required this.flex,
  });

  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: const EdgeInsets.all(12),
        height: 100,
        child: Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
        ),
      ),
    );
  }
}
