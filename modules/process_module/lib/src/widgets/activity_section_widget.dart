// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:process_module/src/widgets/info_widget.dart';

import 'resource_section_widget.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({
    Key? key,
    required this.process,
  }) : super(key: key);

  final Process process;

  @override
  Widget build(BuildContext context) {
    return ColumnBuilder(
      showDivider: true,
      dividerPadding: const EdgeInsets.only(top: 32.0, bottom: 32.0),
      crossAxisAlignment: CrossAxisAlignment.start,
      itemBuilder: (BuildContext context, int index) {
        final item = process.activities.elementAt(index);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          '${process.code}.${item.activityCode} ${item.activityTitle}',
                          softWrap: true,
                          maxLines: 3,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                      InfoWidget(
                        activity: item,
                      )
                    ],
                  ),
                  ResourcesSection(activity: item, process: process)
                ],
              ),
            ),
          ],
        );
      },
      itemCount: process.activities.length,
    );
  }
}
