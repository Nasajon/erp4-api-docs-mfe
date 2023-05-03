// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';

class TreeListProcessItem extends StatelessWidget {
  const TreeListProcessItem({
    Key? key,
    required this.process,
  }) : super(key: key);

  final Process process;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => Modular.to.pushNamed(
            '/processes/${process.code.replaceAll('/', '-')}',
          ),
          child: Padding(
            padding: NsjPadding.leftSmall(context),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(process.code,
                    style: NsjText.bodyLarge(context)!.copyWith(
                        color: AnaColors.darkBlue,
                        fontWeight: FontWeight.bold)),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      process.title,
                      style: NsjText.bodyLarge(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}
