// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

import 'package:site_documentacao_api/widgets/mope/web/row_title.dart';

class TreeListTile extends StatefulWidget {
  const TreeListTile({
    Key? key,
    required this.number,
    required this.title,
    this.body,
  }) : super(key: key);

  final String number;
  final String title;
  final Widget? body;

  @override
  TreeListTileState createState() => TreeListTileState();
}

class TreeListTileState extends State<TreeListTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Container(
            padding: NsjPadding.verticalSmall(context),
            child: Row(
              children: <Widget>[
                Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_right,
                  size: 24.0,
                  color: Colors.grey[500],
                ),
                RowTitle(rowNumber: widget.number, rowName: widget.title)
              ],
            ),
          ),
        ),
        const Divider(),
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          height: _isExpanded ? null : 0,
          padding: NsjPadding.small(context),
          child: widget.body,
        ),
      ],
    );
  }
}
