import 'package:flutter/material.dart';
import 'package:site_documentacao_api/constants/colors.dart';
import 'package:site_documentacao_api/models/mope_model.dart';

class MopeItem extends StatelessWidget {
  const MopeItem(
      {super.key,
      required this.flex,
      required this.itemName,
      required this.onPressed,
      required this.processItens});

  final int flex;
  final String itemName;
  final VoidCallback onPressed;
  final Process processItens;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: InkWell(
        onTap: onPressed,
        child: Card(
          color: setColor(returnDescriptionItem()),
          margin: const EdgeInsets.all(8),
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      processItens.processCode,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: nsj_colors_primary,
                          fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Text(
                        itemName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: nsj_colors_text_primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  setColor(int item) {
    if (item == 0) {
      return const Color.fromARGB(255, 245, 245, 245);
    }
    return Colors.white;
  }

  returnDescriptionItem() {
    {
      for (final descriptionItem in processItens.processActivities) {
        if (descriptionItem.activityResources.isEmpty) {
          return 0;
        }
        return 1;
      }
    }
  }
}
