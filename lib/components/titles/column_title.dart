import 'package:flutter/material.dart';
import 'package:site_documentacao_api/constants/colors.dart';

class ColumnTitle extends StatelessWidget {
  const ColumnTitle(
      {super.key,
      required this.flex,
      required this.titleName,
      required this.titleNumber});

  final int flex;
  final String titleName;
  final String titleNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        height: 125,
        margin: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: nsj_colors_primary),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              child: Text(
                titleNumber,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Text(
              titleName,
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
