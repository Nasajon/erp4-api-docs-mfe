import 'package:flutter/material.dart';
import 'package:site_documentacao_api/widgets/mope/column_title.dart';

class MopeColumnTitleRow extends StatelessWidget {
  const MopeColumnTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 250,
        ),
        Expanded(
          child: Row(
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
                titleName: 'Ciclo de vida de produtos e serviços',
                titleNumber: '3',
              ),
              ColumnTitle(
                flex: 1,
                titleName: 'Suporte, infra, operacional',
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
        ),
      ],
    );
  }
}
