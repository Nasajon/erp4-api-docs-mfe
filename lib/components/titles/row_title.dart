import 'package:flutter/material.dart';
import 'package:site_documentacao_api/constants/colors.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({super.key, required this.rowNumber, required this.rowName});

  final String rowNumber;
  final String rowName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8, left: 8),
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: nsj_colors_primary),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            child: Text(
              rowNumber,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Text(
            rowName,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
