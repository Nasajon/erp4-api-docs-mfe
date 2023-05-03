import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:process_module/src/widgets/activity_section_widget.dart';

class ProcessPageBody extends StatelessWidget {
  const ProcessPageBody({
    Key? key,
    required this.process,
  }) : super(key: key);

  final Process process;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: NsjPadding.horizontalMedium(context),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: NsjPadding.verticalLarge(context),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${process.code} ',
                    style: NsjText.titleLarge(context),
                  ),
                  Flexible(
                    child: Text(
                      process.title,
                      style: NsjText.titleLarge(context),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: NsjPadding.bottomMedium(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: NsjPadding.verticalSmall(context),
                    child: Text(
                      'Objetivo',
                      style: NsjText.titleMedium(context),
                    ),
                  ),
                  Padding(
                    padding: NsjPadding.verticalSmall(context),
                    child: Text(process.description,
                        style: NsjText.bodyLarge(context)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: NsjPadding.bottomMedium(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: NsjPadding.verticalSmall(context),
                    child: Text(
                      'Atividades',
                      style: NsjText.titleMedium(context),
                    ),
                  ),
                  Padding(
                    padding: NsjPadding.verticalSmall(context),
                    child: Text(
                      'A seguir serão listadas as atividades referentes à este processo. Clique em um de seus recursos para acessar sua documentação',
                      style: NsjText.bodyLarge(context),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: NsjPadding.verticalSmall(context),
              child: ActivitySection(process: process),
            )
          ],
        ),
      ),
    );
  }
}
