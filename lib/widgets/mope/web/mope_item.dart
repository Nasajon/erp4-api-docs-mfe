import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MopeItem extends StatelessWidget {
  const MopeItem({
    super.key,
    required this.flex,
    required this.itemName,
    required this.onPressed,
    required this.process,
  });

  final int flex;
  final String itemName;
  final VoidCallback onPressed;
  final Process process;

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;

    return Expanded(
      flex: flex,
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: onPressed,
        child: Card(
          color: setColor(brightness),
          margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 16.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(process.code,
                    style: NsjText.bodySmall(context)!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AnaColors.darkBlue)),
                Text(itemName,
                    textAlign: TextAlign.center,
                    style: NsjText.bodySmall(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color setColor(brightness) {
    return brightness == Brightness.light
        ? setColorLightMode()
        : setColorDarkMode();
  }

  Color setColorLightMode() {
    return activityHasResource() ? Colors.white : Colors.white70;
  }

  Color setColorDarkMode() {
    return activityHasResource()
        ? Color.fromARGB(255, 82, 82, 75)
        : const Color.fromARGB(255, 54, 54, 50);
  }

  bool activityHasResource() {
    bool teste = false; 
    for (final Activity activity in process.activities) {
      if(activity.activityResources.isNotEmpty){
        return teste = true;
      }
    }
    return teste;
  }
}
