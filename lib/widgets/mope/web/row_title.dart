import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({
    super.key,
    required this.rowNumber,
    required this.rowName,
  });

  final String? rowNumber;
  final String? rowName;

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: NsjPadding.horizontalExtraSmall(context),
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.0,
              color: setColor(brightness),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Text(
            rowNumber!,
            style: NsjText.bodyLarge(context)!.copyWith(
                color: AnaColors.darkBlue, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          rowName!,
          style: NsjText.bodyLarge(context)!
              .copyWith(color: AnaColors.darkBlue, fontWeight: FontWeight.bold),
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
