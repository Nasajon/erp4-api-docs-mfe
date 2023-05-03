import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ActivityDetailsDialog extends StatelessWidget {
  ActivityDetailsDialog({super.key, required this.activity});

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
        style: NsjText.titleExtraSmall(context),
      ),
      content: ColumnBuilder(
        itemCount: activity.activityDescriptionSubitens.length,
        itemBuilder: (context, index) {
          final subitem = activity.activityDescriptionSubitens.elementAt(index);
          final subitemLetterIndex =
              setSubitensIndexToLetter((index + 1), subitemIndexToLetterMap);
          return Column(
            children: [
              Padding(
                padding: NsjPadding.bottomSmall(context),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$subitemLetterIndex) ',
                      style: NsjText.bodyLarge(context)!
                          .copyWith(color: AnaColors.darkBlue),
                    ),
                    Flexible(
                      child: Text(
                        subitem.subitemDescription,
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: NsjPadding.leftSmall(context),
                child: ColumnBuilder(
                  itemCount: subitem.subitemItens.length,
                  itemBuilder: (BuildContext context, int index) {
                    final subitemItem = subitem.subitemItens.elementAt(index);
                    return Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$subitemLetterIndex.${index + 1}) ",
                            style: NsjText.bodyLarge(context)!
                                .copyWith(color: AnaColors.darkBlue),
                          ),
                          Flexible(
                            child: Text(
                              subitemItem,
                              style: NsjText.bodyLarge(context),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
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
