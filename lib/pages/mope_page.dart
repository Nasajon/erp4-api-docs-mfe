import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';
import 'package:site_documentacao_api/pages/texts.dart';
import 'package:site_documentacao_api/widgets/mope/mobile/tree_list_mope_controller.dart';

import 'package:site_documentacao_api/widgets/mope/mobile/tree_list_mope.dart';
import 'package:site_documentacao_api/widgets/mope/web/text_section.dart';
import '../widgets/mope/web/matrix_mope.dart';

import '../widgets/web_sections/footer_widget.dart';
import '../widgets/web_sections/header_widget.dart';

class MopePage extends StatelessWidget {
  const MopePage({
    super.key,
    required this.controller,
  });

  final TreeListMopeController controller;

  @override
  Widget build(BuildContext context) {
    final List<TextStyle?> erpTextStyles = [
      NsjText.bodyLarge(context),
      NsjText.bodyLarge(context),
      NsjText.bodyLarge(context),
      NsjText.bodyLarge(context)!.copyWith(fontWeight: FontWeight.bold),
    ];

    final List<TextStyle?> mopeTextStyles = [
      NsjText.bodyLarge(context),
      NsjText.bodyLarge(context),
      NsjText.bodyLarge(context),
      NsjText.bodyLarge(context),
      NsjText.bodyLarge(context)!.copyWith(fontWeight: FontWeight.bold),
      NsjText.bodyLarge(context),
      NsjText.bodyLarge(context)!
          .copyWith(color: AnaColors.darkBlue, fontWeight: FontWeight.bold),
    ];

    final List<TextStyle?> generalDisposalsStyles = [
      NsjText.bodyLarge(context),
      NsjText.bodyLarge(context)!.copyWith(fontWeight: FontWeight.bold),
    ];

    final List<TextStyle?> autenticationStyles = [
      NsjText.bodyLarge(context),
      NsjText.bodyLarge(context),
      NsjText.bodyLarge(context)!.copyWith(fontWeight: FontWeight.bold),
    ];

    return Scaffold(
      appBar: const Header(),
      body: ListView(
        children: [
          Padding(
            padding: NsjPadding.horizontalMedium(context),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: NsjPadding.verticalLarge(context),
                  child: Text('Documentação de Apis',
                      style: NsjText.titleExtraLarge(context)),
                ),
                TextSection(
                    title:
                        '1. O sistema integrado de gestão empresarial ERP Nasajon',
                    texts: erpDescription,
                    textStyles: erpTextStyles),
                TextSection(
                  title: '2. Disposições Gerais',
                  texts: generalDisposalsDescription,
                  textStyles: generalDisposalsStyles,
                  hasLink: true,
                  wordsLink: 'desta sessão',
                  onLinkPressed: () =>
                      Modular.to.pushNamed('/general-disposals'),
                ),
                TextSection(
                  title: '3. Autenticação',
                  texts: autenticationDescription,
                  textStyles: autenticationStyles,
                  hasLink: true,
                  wordsLink: 'Nesta sessão',
                  onLinkPressed: () => Modular.to.pushNamed('/authentication'),
                ),
                TextSection(
                    title:
                        '4. A Matriz de Operações e Processos Empresariais MOPE Nasajon',
                    texts: mopeDescription,
                    textStyles: mopeTextStyles),
                Padding(
                  padding: NsjPadding.verticalMedium(context),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth < 1300) {
                        return TreeListMope(controller: controller);
                      }
                      return const MatrixMope();
                    },
                  ),
                ),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
