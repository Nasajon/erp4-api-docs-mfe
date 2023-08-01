// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';
import 'package:site_documentacao_api/widgets/mope/mobile/tree_list_mope_controller.dart';
import 'package:site_documentacao_api/widgets/mope/mobile/segment_type_enum.dart';

class LastTreeListBodySection extends StatelessWidget {
  const LastTreeListBodySection({
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
    final list = controller.setGFAProcessListBySegment('GFA', row, '6');
    return Column(
      children: [
        list.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Gestão financeira e administrativa',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const Divider(
                    color: Colors.amber,
                  )
                ],
              )
            : const SizedBox(),
        ColumnBuilder(
          itemBuilder: (context, index) {
            final item = list.elementAt(index);

            return ListTile(
              onTap: () => Modular.to.pushNamed(
                '/processes/${item.code.replaceAll('/', '-')}',
              ),
              leading: Text(item.code),
              title: Text(item.title),
            );
          },
          itemCount: list.length,
        ),
      ],
    );
  }
}
