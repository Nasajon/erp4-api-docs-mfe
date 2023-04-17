import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({super.key, required this.rowNumber, required this.rowName});

  final String rowNumber;
  final String rowName;

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8, left: 8),
          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: setColor(brightness)),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Text(
            rowNumber,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Text(
          rowName,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }

  Color setColor(brightness) {
    return brightness == Brightness.light
        ? AnaColors.darkBlue
        : const Color.fromARGB(255, 69, 110, 161);
  }
}
