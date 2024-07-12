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
      dividerPadding: NsjPadding.verticalMedium(context),
      itemCount: process.activities.length,
      itemBuilder: (BuildContext context, int index) {
        final item = process.activities.elementAt(index);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: NsjPadding.bottomSmall(context),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                        '${process.code}.${item.activityCode} - ${item.activityTitle}',
                        softWrap: true,
                        maxLines: 3,
                        style: NsjText.titleSmall(context)),
                  ),
                  InfoWidget(
                    activity: item,
                  )
                ],
              ),
            ),
            ResourcesSection(activity: item, process: process),
          ],
        );
      },
    );
  }
}
