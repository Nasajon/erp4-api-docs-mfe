import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class CodeBox extends StatelessWidget {
  const CodeBox({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: NsjPadding.verticalSmall(context),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              padding: NsjPadding.small(context),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: AnaColors.darkBlue, width: 4.0),
                ),
              ),
              child: Text(
                text,
                style: NsjText.bodyLarge(context),
              ),
            ),
          ),
          IconButton(
            iconSize: 16.0,
            onPressed: () {
              final data = ClipboardData(text: text);
              Clipboard.setData(data);
            },
            icon: const Icon(Icons.content_copy),
          )
        ],
      ),
    );
  }
}
