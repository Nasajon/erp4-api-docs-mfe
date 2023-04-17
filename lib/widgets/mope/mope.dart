import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:site_documentacao_api/widgets/mope/mope_body.dart';
import 'package:site_documentacao_api/widgets/mope/mope_last_row.dart';
import 'package:site_documentacao_api/widgets/mope/mope_top_section_title_row.dart';

class Mope extends StatelessWidget {
  const Mope({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MopeModel mope = MopeService.getMope();
    return Column(
      children: [
        // FutureBuilder(
        //   future: MopeService.saveMope(),
        //   builder: (context, snapshot) {
        // if (snapshot.connectionState == ConnectionState.done) {
        //   return
        Column(
          children: [
            MopeTopSectionTitleRow(),
            MopeBody(mope: mope),
            MopeLastRow(row: mope.mopeRows.last)
          ],
        )
        //     }
        //     return const CircularProgressIndicator();
        //   },
        // ),
      ],
    );
  }
}
