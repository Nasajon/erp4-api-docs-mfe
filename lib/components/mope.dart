import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:site_documentacao_api/components/mope_divider.dart';
import 'package:site_documentacao_api/components/mope_grid_columns.dart';
import 'package:site_documentacao_api/components/rows/mope_row.dart';
import 'package:site_documentacao_api/components/rows/mope_top_row.dart';
import 'package:site_documentacao_api/models/mope_model.dart';

class Mope extends StatelessWidget {
  const Mope({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Future<MopeModel> futureMope = setMope();

    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 64.0),
          child: MopeGridColumns(),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Estratégia, Infraestrutura e Produto',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Operações',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const MopeTopRow(),
            FutureBuilder<MopeModel>(
              future: futureMope,
              builder: (context, snapshot) {
                final MopeModel? mope = snapshot.data;
                final MopeRows? lastMopeRow = mope?.mopeRows.last;
                if (snapshot.connectionState == ConnectionState.done) {
                  return Column(
                    children: [
                      ListView.separated(
                        shrinkWrap: true,
                        itemCount: mope!.mopeRows.length - 1,
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
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Gestão financeira e administrativa',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                      MopeRow(
                        mopeRows: lastMopeRow,
                      )
                    ],
                  );
                }

                return Container();
              },
            )
          ],
        ),
      ],
    );
  }

  Future<MopeModel> setMope() async {
    final String json = await rootBundle.loadString('Json/mope.json');
    final MopeModel mope = MopeModel.fromJson(jsonDecode(json));
    return mope;
  }
}
