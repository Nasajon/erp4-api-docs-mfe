import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';

class ResourcesSection extends StatelessWidget {
  const ResourcesSection({
    Key? key,
    required this.activity,
    required this.process,
  }) : super(key: key);

  final Activity activity;

  final Process process;

  @override
  Widget build(BuildContext context) {
    if (activity.activityResources.isEmpty) {
      return const SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recursos',
          style: NsjText.titleExtraSmall(context),
        ),
        Padding(
          padding: NsjPadding.horizontalExtraSmall(context),
          child: ColumnBuilder(
            itemCount: activity.activityResources.length,
            itemBuilder: ((context, index) {
              final resource = activity.activityResources.elementAt(index);
              return InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () => Modular.to.pushNamed(
                    '/processes/${process.code}/activities/${process.code}.${activity.activityCode}/resources/${resource.fileName}'),
                child: Padding(
                  padding: NsjPadding.extraSmall(context),
                  child: Text(
                    '•  ${resource.resourceTitle}',
                    style: NsjText.bodyLarge(context)!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
