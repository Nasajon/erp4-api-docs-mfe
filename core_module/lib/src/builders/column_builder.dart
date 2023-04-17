import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ColumnBuilder extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final VerticalDirection verticalDirection;
  final int itemCount;
  final bool showDivider;
  final EdgeInsets? dividerPadding;

  const ColumnBuilder({
    Key? key,
    required this.itemBuilder,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.verticalDirection = VerticalDirection.down,
    required this.itemCount,
    this.showDivider = false,
    this.dividerPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    return Column(
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      children: List.generate(itemCount, (index) {
        final item = itemBuilder(context, index);
        if (showDivider && index < itemCount - 1) {
          return Column(
            children: [
              item,
              Padding(
                padding: dividerPadding ?? const EdgeInsets.all(0),
                child: Divider(
                  color: setColor(brightness),
                  height: 1,
                ),
              ),
            ],
          );
        } else {
          return item;
        }
      }).toList(),
    );
  }

  Color setColor(brightness) {
    return brightness == Brightness.light
        ? const Color.fromARGB(80, 0, 70, 155)
        : const Color.fromARGB(255, 69, 110, 161);
  }
}
