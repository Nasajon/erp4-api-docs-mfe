import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({super.key, required this.content});

  final List<String> content;

  @override
  Widget build(BuildContext context) {
    final List<TextStyle?> textStyles = [
      NsjText.titleExtraSmall(context),
      NsjText.bodyLarge(context),
    ];
    return Card(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: NsjPadding.small(context),
          child: RowBuilder(
            mainAxisSize: MainAxisSize.min,
            itemBuilder: (BuildContext context, int index) {
              final section = content.elementAt(index);
              final textContent = section.split(',');
              return Padding(
                padding: NsjPadding.rightMedium(context),
                child: ColumnBuilder(
                    itemBuilder: (BuildContext context, int index) {
                      final textStyle = index < textStyles.length
                          ? textStyles[index]
                          : textStyles.last;
                      final text = textContent.elementAt(index);
                      return Padding(
                        padding: index == 0
                            ? NsjPadding.bottomSmall(context)
                            : NsjPadding.bottomExtraSmall(context),
                        child: Text(
                          text,
                          softWrap: true,
                          style: textStyle,
                        ),
                      );
                    },
                    itemCount: textContent.length),
              );
            },
            itemCount: content.length,
          ),
        ),
      ),
    );
  }
}
