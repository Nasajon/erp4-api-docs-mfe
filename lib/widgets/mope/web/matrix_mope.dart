import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:site_documentacao_api/widgets/mope/web/mope_body.dart';

import 'package:site_documentacao_api/widgets/mope/web/mope_last_row.dart';
import 'package:site_documentacao_api/widgets/mope/web/mope_top_section_title_row.dart';

class MatrixMope extends StatelessWidget {
  const MatrixMope({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MopeModel mope = MopeService.getMope();
    return Column(
      children: [
        Column(
          children: [
            const MopeTopSectionTitleRow(),
            MopeBody(mope: mope),
            MopeLastRow(row: mope.mopeRows.last)
          ],
        )
      ],
    );
  }
}
