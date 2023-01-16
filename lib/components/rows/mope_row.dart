import 'package:flutter/material.dart';
import 'package:site_documentacao_api/components/builders/column_builder.dart';
import 'package:site_documentacao_api/components/rows/mope_row_item.dart';
import 'package:site_documentacao_api/components/titles/row_title.dart';
import 'package:site_documentacao_api/models/mope_model.dart';

class MopeRow extends StatelessWidget {
  const MopeRow({
    super.key,
    required this.mopeRows,
  });

  final MopeRows? mopeRows;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        SizedBox(
          width: 250,
          child: RowTitle(
              rowNumber: mopeRows!.mopeRowNumber.toString(),
              rowName: mopeRows!.mopeRowTitle),
        ),
        Expanded(
          child: ColumnBuilder(
              itemBuilder: (BuildContext context, int index) {
                final item = mopeRows!.mopeRowItens.elementAt(index);
                return MopeRowItem(
                  mopeRowItensList: item,
                );
              },
              itemCount: mopeRows!.mopeRowItens.length),
        ),
      ],
    );
  }
}
