// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:site_documentacao_api/widgets/mope/web/mope_row_item.dart';

import 'package:site_documentacao_api/widgets/mope/web/row_title.dart';

class MopeRow extends StatelessWidget {
  const MopeRow({
    Key? key,
    required this.mopeRows,
  }) : super(key: key);

  final MopeRows? mopeRows;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 250.0,
          child: RowTitle(
              rowNumber: mopeRows!.mopeRowNumber.toString(),
              rowName: mopeRows!.mopeRowTitle),
        ),
        Expanded(
          child: ColumnBuilder(
            itemCount: mopeRows!.mopeRowItens.length,
            itemBuilder: (BuildContext context, int index) {
              final MopeRowItens mopeRowItem =
                  mopeRows!.mopeRowItens.elementAt(index);
              return MopeRowItem(
                mopeRowItensList: mopeRowItem,
              );
            },
          ),
        ),
      ],
    );
  }
}
