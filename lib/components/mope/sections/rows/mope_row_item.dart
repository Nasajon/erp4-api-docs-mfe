import 'package:flutter/material.dart';
import 'package:site_documentacao_api/components/mope/itens/blank_space.dart';
import 'package:site_documentacao_api/components/builders/row_builder.dart';
import 'package:site_documentacao_api/components/mope/itens/mope_item.dart';
import 'package:site_documentacao_api/models/mope_model.dart';
import 'package:site_documentacao_api/pages/mope_process_page.dart';

class MopeRowItem extends StatelessWidget {
  const MopeRowItem({
    super.key,
    required this.mopeRowItensList,
  });

  final MopeRowItens mopeRowItensList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: RowBuilder(
        itemCount: mopeRowItensList.processes.length,
        itemBuilder: (BuildContext context, int index) {
          final item = mopeRowItensList.processes.elementAt(index);
          final processItemName = item.processTitle;
          final processFlex = item.flex;
          final isBlankSpace = item.isBlankSpace;
          if (isBlankSpace == false) {
            return MopeItem(
              flex: processFlex,
              itemName: processItemName,
              onPressed: () => goProcessPage(processItemName, item, context),
              processItens: item,
            );
          }
          return MopeBlankSpace(flex: processFlex);
        },
      ),
    );
  }

  goProcessPage(String mopeCode, Process processItem, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) =>
                MopeProcessPage(processItem: processItem)));
  }
}
