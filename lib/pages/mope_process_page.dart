import 'package:flutter/material.dart';
import 'package:site_documentacao_api/components/activity_item.dart';
import 'package:site_documentacao_api/components/builders/column_builder.dart';
import 'package:site_documentacao_api/constants/colors.dart';
import 'package:site_documentacao_api/models/mope_model.dart';

class MopeProcessPage extends StatelessWidget {
  MopeProcessPage({
    super.key,
    required this.processItem,
  });

  final ProcessItens processItem;
  final Map<int, String> subitemIndexToLetterMap = {
    1: "a",
    2: "b",
    3: "c",
    4: "d",
    5: "e",
    6: "f",
    7: "g",
    8: "h",
    9: "i",
    10: "j",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          color: const Color.fromARGB(50, 0, 0, 0),
          margin: const EdgeInsets.only(left: 260),
          padding: const EdgeInsets.only(left: 8),
          width: 300,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
              const Text(
                'Voltar à página anterior',
                style: TextStyle(color: nsj_colors_text_dark, fontSize: 14),
              ),
            ],
          ),
        ),
        // leadingWidth: 25,
        backgroundColor: nsj_colors_primary,
        foregroundColor: nsj_colors_text_dark,

        toolbarHeight: 40,
      ),
      body: ListView(
        padding:
            const EdgeInsets.only(top: 72, right: 280, left: 280, bottom: 128),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Text(
                    processItem.title,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text('1. Objetivo do processo',
                      style: Theme.of(context).textTheme.headline3),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Text(
                    processItem.descriptionFirstParagraph,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    '2. Especificação do processo',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                ColumnBuilder(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    itemBuilder: (BuildContext context, int index) {
                      final item =
                          processItem.descriptionItens.elementAt(index);

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2.${index + 1}. ${item.itemDescription}\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 32.0),
                            child: ColumnBuilder(
                                itemBuilder: (BuildContext context, int index) {
                                  final subitem =
                                      item.itemSubitens.elementAt(index);
                                  final subitemLetterIndex =
                                      setSubitensIndexToLetter(
                                          (index + 1), subitemIndexToLetterMap);

                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "$subitemLetterIndex) ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1,
                                          ),
                                          SizedBox(
                                            width: 1200,
                                            child: Text(
                                              "${subitem.subitemDescription}\n",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: ColumnBuilder(
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              final subitemItem = subitem
                                                  .subitemItens
                                                  .elementAt(index);

                                              return Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "$subitemLetterIndex${index + 1}) ",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1,
                                                  ),
                                                  SizedBox(
                                                    width: 1100,
                                                    child: Text(
                                                      "$subitemItem\n",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1,
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                            itemCount:
                                                subitem.subitemItens.length),
                                      )
                                    ],
                                  );
                                },
                                itemCount: item.itemSubitens.length),
                          )
                        ],
                      );
                    },
                    itemCount: processItem.descriptionItens.length),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  '3. Atividades',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Text(
                  'Selecione abaixo a atividade desejada para acessar sua documentação:',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              ColumnBuilder(
                itemCount: processItem.processItensActivities.length,
                itemBuilder: (BuildContext context, int index) {
                  final item =
                      processItem.processItensActivities.elementAt(index);
                  final titles = item.title;
                  final urls = item.url;
                  final activity =
                      processItem.processItensActivities.elementAt(index);
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
    );
  }

  String setSubitensIndexToLetter(int index, Map map) {
    String indexLetter = '';
    for (final item in map.entries) {
      if (index == item.key) {
        return indexLetter = item.value;
      }
    }
    return indexLetter;
  }
}
