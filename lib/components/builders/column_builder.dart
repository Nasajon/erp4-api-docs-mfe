import 'package:flutter/material.dart';
import 'package:site_documentacao_api/constants/colors.dart';

class ColumnBuilder extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final VerticalDirection verticalDirection;
  final int itemCount;
  final bool showDivider;
  final EdgeInsets? dividerPadding; // novo parâmetro

  const ColumnBuilder({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.verticalDirection = VerticalDirection.down,
    this.showDivider = false,
    this.dividerPadding,
    // valor padrão é `true`
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: const Divider(
                  color: nsj_colors_primary_separator,
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
}
