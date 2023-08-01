import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:site_documentacao_api/widgets/mope/mobile/tree_list_mope_controller.dart';
import 'package:site_documentacao_api/widgets/mope/mobile/last_tree_list_body_section.dart';
import 'package:site_documentacao_api/widgets/mope/mobile/segment_type_enum.dart';
import 'package:site_documentacao_api/widgets/mope/mobile/tree_list_body_section.dart';
import 'package:site_documentacao_api/widgets/mope/mobile/tree_list_tile.dart';

class TreeListMope extends StatelessWidget {
  const TreeListMope({super.key, required this.controller});

  final TreeListMopeController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ColumnBuilder(
          itemBuilder: (context, index) {
            final row = controller.mope.mopeRows.elementAt(index);

            return TreeListTile(
              title: row.mopeRowTitle,
              number: row.mopeRowNumber.toString(),
              body: Padding(
                padding: NsjPadding.horizontalMedium(context),
                child: Column(
                  children: [
                    TreeListBodySection(
                      row: row,
                      controller: controller,
                      title: 'Estratégia, infraestrutura, produto',
                      segmentType: SegmentTypeEnum.EIP,
                    ),
                    TreeListBodySection(
                        row: row,
                        controller: controller,
                        title: 'Operações',
                        segmentType: SegmentTypeEnum.OP),
                    LastTreeListBodySection(
                        row: row,
                        controller: controller,
                        title: 'Gestão financeira e administrativa',
                        segmentType: SegmentTypeEnum.GFA)
                  ],
                ),
              ),
            );
          },
          itemCount: controller.mope.mopeRows.length),
    );
  }
}
