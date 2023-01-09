import 'package:flutter/material.dart';
import 'package:site_documentacao_api/constants/colors.dart';

class BlanlGridTitle extends StatelessWidget {
  const BlanlGridTitle({
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
            )
          ],
        ),
      ),
    );
  }
}
