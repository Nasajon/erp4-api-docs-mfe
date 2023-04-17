import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';

import 'mope_item.dart';

class MopeRowItem extends StatelessWidget {
  const MopeRowItem({
    Key? key,
    required this.mopeRowItensList,
  }) : super(key: key);

  final MopeRowItens mopeRowItensList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: RowBuilder(
        itemCount: mopeRowItensList.processes.length,
        itemBuilder: (BuildContext context, int index) {
          final Process process = mopeRowItensList.processes.elementAt(index);

          if (process.isBlankSpace) {
            return Expanded(
              flex: process.flex,
              child: const SizedBox(),
            );
          }
          return MopeItem(
            flex: process.flex,
            itemName: process.title,
            onPressed: () {
              Modular.to.pushNamed(
                '/processes/${process.code.replaceAll('/', '-')}',
              );
            },
            process: process,
          );
        },
      ),
    );
  }
}
