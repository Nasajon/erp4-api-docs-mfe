import 'package:flutter/material.dart';
import 'package:site_documentacao_api/components/builders/column_builder.dart';
import 'package:site_documentacao_api/models/mope_model.dart';

class ActivituDetailsDialog extends StatelessWidget {
  ActivituDetailsDialog({super.key, required this.activity});

  final Activity activity;
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
    10: "j"
  };

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        scrollable: true,
        title: Text(
          activity.activityDescription,
          style: Theme.of(context).textTheme.headline4,
        ),
        content: ColumnBuilder(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          itemBuilder: (context, index) {
            final subitem =
                activity.activityDescriptionSubitens.elementAt(index);
            final subitemLetterIndex =
                setSubitensIndexToLetter((index + 1), subitemIndexToLetterMap);
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$subitemLetterIndex) '),
                  SizedBox(
                      width: 800,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Text(subitem.subitemDescription,
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                          ColumnBuilder(
                              itemBuilder: (BuildContext context, int index) {
                                final subitemItem =
                                    subitem.subitemItens.elementAt(index);
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "$subitemLetterIndex.${index + 1}) ",
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    ),
                                    SizedBox(
                                      width: 600,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 12.0),
                                        child: Text(
                                          subitemItem,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                              itemCount: subitem.subitemItens.length)
                        ],
                      )),
                ],
              ),
            );
          },
          itemCount: activity.activityDescriptionSubitens.length,
        ));
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