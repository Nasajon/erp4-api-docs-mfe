import 'package:flutter/material.dart';
import 'package:site_documentacao_api/components/activity_item.dart';
import 'package:site_documentacao_api/models/mope_model.dart';
import 'package:site_documentacao_api/pages/api_documentation_webview.dart';

class MopeProcessPage extends StatelessWidget {
  const MopeProcessPage({
    super.key,
    required this.mopeCode,
    required this.processItem,
  });

  final String mopeCode;
  final ProcessItens processItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mopeCode),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 32,
          right: 280,
          left: 280,
        ),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            processItem.subtitle,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                        Text(
                          processItem.description.toString(),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Atividades',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: Text(
                          'Selecione abaixo a atividade desejada para acessar sua documentação:',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: processItem.processItensActivities?.length,
                        itemBuilder: (BuildContext context, int index) {
                          final item = processItem.processItensActivities!
                              .elementAt(index);

                          final titles = item.title;
                          final urls = item.url;
                          final activity = processItem.processItensActivities!
                              .elementAt(index);
                          return ActivityItem(
                            title: titles,
                            url: urls,
                            activity: activity,
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
