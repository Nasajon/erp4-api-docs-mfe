import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

import 'package:site_documentacao_api/widgets/mope/mobile/tree_list_mope_controller.dart';
import 'package:site_documentacao_api/widgets/mope/mobile/segment_type_enum.dart';
import 'package:site_documentacao_api/widgets/mope/mobile/tree_list_process_item.dart';
import 'package:site_documentacao_api/widgets/mope/mobile/tree_list_tile.dart';

class TreeListBodySection extends StatelessWidget {
  const TreeListBodySection({
    Key? key,
    required this.row,
    required this.controller,
    required this.title,
    required this.segmentType,
  }) : super(key: key);

  final MopeRows row;
  final TreeListMopeController controller;
  final String title;
  final SegmentTypeEnum segmentType;

  @override
  Widget build(BuildContext context) {
    final Set<String> set = controller.setListBySegment(segmentType.name, row);
    final screenWith = MediaQuery.of(context).size.width;
    return Column(
      children: [
        set.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: screenWith > 650
                        ? Theme.of(context).textTheme.titleLarge
                        : Theme.of(context).textTheme.titleMedium,
                  ),
                  const Divider(
                    color: Colors.amber,
                  )
                ],
              )
            : const SizedBox(),
        ColumnBuilder(
          itemBuilder: (context, index) {
            final item = set.elementAt(index);

            final list =
                controller.setProcessListBySegment(segmentType.name, row, item);

            return TreeListTile(
              number: '${row.mopeRowNumber}${item.toString()}',
              title: controller.setListItemName(item.toString()),
              body: ColumnBuilder(
                  itemBuilder: (context, index) {
                    final item = list.elementAt(index);
                    return Padding(
                      padding: NsjPadding.leftSmall(context),
                      child: TreeListProcessItem(process: item),
                    );
                  },
                  itemCount: list.length),
            );
          },
          itemCount: set.length,
        )
      ],
    );
  }
}
