import 'package:flutter/material.dart';
import 'package:site_documentacao_api/components/mope/sections/titles/column_title.dart';

class MopeTopRow extends StatelessWidget {
  const MopeTopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 250,
        ),
        Expanded(
          child: Column(children: [
            Row(
              children: const [
                ColumnTitle(
                  flex: 1,
                  titleName: 'Estratégia',
                  titleNumber: '1',
                ),
                ColumnTitle(
                  flex: 1,
                  titleName: 'Infraestrutura',
                  titleNumber: '2',
                ),
                ColumnTitle(
                  flex: 1,
                  titleName: 'Ciclo de vida produtos e serviços',
                  titleNumber: '3',
                ),
                ColumnTitle(
                  flex: 1,
                  titleName: 'Suporte, infraestrutura, operacional',
                  titleNumber: '4',
                ),
                ColumnTitle(
                  flex: 1,
                  titleName: 'Venda de produtos e serviços',
                  titleNumber: '5',
                ),
                ColumnTitle(
                  flex: 2,
                  titleName: 'Suporte e garantia de produtos e serviços',
                  titleNumber: '6',
                ),
                ColumnTitle(
                  flex: 1,
                  titleName: 'Devolução de produtos e serviços',
                  titleNumber: '7',
                ),
                ColumnTitle(
                  flex: 2,
                  titleName: 'Faturamento e garantia de receita',
                  titleNumber: '8',
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
