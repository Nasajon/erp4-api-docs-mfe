// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:site_documentacao_api/widgets/mope/web/mope_column_title_row.dart';

import 'package:site_documentacao_api/widgets/mope/web/mope_divider.dart';
import 'package:site_documentacao_api/widgets/mope/web/mope_grid_columns.dart';
import 'package:site_documentacao_api/widgets/mope/web/mope_row.dart';

class MopeBody extends StatelessWidget {
  const MopeBody({
    Key? key,
    required this.mope,
  }) : super(key: key);
  final MopeModel mope;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const MopeGridColumns(),
        Column(
          children: [
            const MopeColumnTitleRow(),
            ListView.separated(
              shrinkWrap: true,
              itemCount: mope.mopeRows.length - 1,
              itemBuilder: ((context, index) {
                final item = mope.mopeRows.elementAt(index);
                return MopeRow(
                  mopeRows: item,
                );
              }),
              separatorBuilder: (BuildContext context, int index) =>
                  const MopeDivider(),
            ),
            const MopeDivider(
              color: Colors.orange,
              height: 2.0,
            ),
          ],
        ),
      ],
    );
  }
}
