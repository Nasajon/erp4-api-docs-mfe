import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:site_documentacao_api/widgets/mope/web/mope_row.dart';

class MopeLastRow extends StatelessWidget {
  const MopeLastRow({
    Key? key,
    required this.row,
  }) : super(key: key);

  final MopeRows row;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'Gestão financeira e administrativa',
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
        MopeRow(
          mopeRows: row,
        )
      ],
    );
  }
}
