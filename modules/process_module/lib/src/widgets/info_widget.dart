import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'package:process_module/src/widgets/activity_details_widget.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    Key? key,
    required this.activity,
  }) : super(key: key);

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    if (activity.activityDescription.isEmpty) {
      return const SizedBox();
    }
    return IconButton(
      tooltip: "Detalhes da atividade",
      color: setColor(brightness),
      splashRadius: 5.0,
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) {
          return ActivityDetailsDialog(
            activity: activity,
          );
        },
      ),
      icon: const Icon(
        Icons.info_outlined,
        size: 16.0,
      ),
    );
  }

  Color setColor(brightness) {
    return brightness == Brightness.light
        ? AnaColors.darkBlue
        : const Color.fromARGB(255, 69, 110, 161);
  }
}
