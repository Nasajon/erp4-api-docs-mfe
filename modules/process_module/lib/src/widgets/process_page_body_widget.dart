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
    return ListView(
      padding:
          const EdgeInsets.only(top: 72, right: 128, left: 128, bottom: 128),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  children: [
                    Text(
                      '${process.code} ',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      process.title,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  'Objetivo',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Text(
                  process.description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  'Atividades',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Text(
                  'A seguir serão listadas as atividades referentes à este processo. Clique em um de seus recursos para acessar sua documentação',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              ActivitySection(process: process)
            ],
          ),
        ),
      ],
    );
  }
}
