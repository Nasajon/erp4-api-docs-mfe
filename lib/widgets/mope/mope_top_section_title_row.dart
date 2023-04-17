import 'package:flutter/material.dart';

class MopeTopSectionTitleRow extends StatelessWidget {
  const MopeTopSectionTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Estratégia, Infraestrutura e Produto',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Operações',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
