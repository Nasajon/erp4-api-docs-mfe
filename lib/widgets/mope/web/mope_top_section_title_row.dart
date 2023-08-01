import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

class MopeTopSectionTitleRow extends StatelessWidget {
  const MopeTopSectionTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: NsjPadding.bottomMedium(context),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Estratégia, infraestrutura e produto',
                style: NsjText.titleSmall(context),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Operações',
                style: NsjText.titleSmall(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
