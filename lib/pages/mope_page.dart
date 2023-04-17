import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

import '../widgets/mope/mope.dart';
import '../widgets/web_sections/footer_widget.dart';
import '../widgets/web_sections/header_widget.dart';

class MopePage extends StatelessWidget {
  const MopePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List erpTextStyles = [
      Theme.of(context).textTheme.bodyLarge,
      Theme.of(context).textTheme.bodyLarge,
      Theme.of(context).textTheme.bodyLarge,
      Theme.of(context).textTheme.bodyMedium,
      Theme.of(context).textTheme.titleMedium
    ];
    final List mopeTextStyles = [
      Theme.of(context).textTheme.bodyLarge,
      Theme.of(context).textTheme.bodyLarge,
      Theme.of(context).textTheme.bodyLarge,
      Theme.of(context).textTheme.bodyLarge,
      Theme.of(context).textTheme.bodyMedium,
      Theme.of(context).textTheme.bodyLarge,
      Theme.of(context).textTheme.titleMedium
    ];
    return Scaffold(
      appBar: const Header(),
      body: ListView(
        padding: const EdgeInsets.only(top: 32),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 32,
              left: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 64.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 56.0, bottom: 96.0),
                        child: Text(
                          'Documentação de Apis',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Text(
                              '1. O sistema integrado de gestão empresarial ERP Nasajon',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          ColumnBuilder(
                              itemBuilder: (BuildContext context, int index) {
                                final String text =
                                    erpDescription.elementAt(index);
                                final textStyle = index < erpTextStyles.length
                                    ? erpTextStyles[index]
                                    : erpTextStyles.last;
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Text(
                                    text,
                                    style: textStyle,
                                  ),
                                );
                              },
                              itemCount: erpDescription.length)
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        '2. A Matriz de Operações e Processos Empresariais MOPE Nasajon',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    ColumnBuilder(
                        itemBuilder: (BuildContext context, int index) {
                          final String text = mopeDescription.elementAt(index);
                          final textStyle = index < mopeDescription.length
                              ? mopeTextStyles[index]
                              : mopeTextStyles.last;
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Text(
                              text,
                              style: textStyle,
                            ),
                          );
                        },
                        itemCount: mopeDescription.length)
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(32, 64, 32, 64),
            child: Mope(),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
