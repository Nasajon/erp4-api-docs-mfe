import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

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
    final Brightness brightness = Theme.of(context).brightness;
    return Expanded(
      flex: flex,
      child: Container(
        height: 125,
        margin: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: setColor(brightness)),
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Text(
                titleNumber,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Text(
              titleName,
              softWrap: true,
              maxLines: 3,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Color setColor(brightness) {
    return brightness == Brightness.light
        ? AnaColors.darkBlue
        : const Color.fromARGB(255, 69, 110, 161);
  }
}
