import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';

import 'package:webview_flutter/webview_flutter.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({
    Key? key,
    required this.resourceName,
    required this.activityCode,
  }) : super(key: key);

  final String resourceName;
  final String activityCode;

  final String baseUrl =
      'https://storage.googleapis.com/api-docs-dev/build_docs/';
  @override
  Widget build(BuildContext context) {
    final Resource resource = setResource(MopeService.getMope(), resourceName);
    return Scaffold(
      appBar: ReturnAppBar(
        backTo: () =>
            Modular.to.pushNamed('/processes/${getProcessCodeFromUrl()}'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 32.0,
          right: 32.0,
          left: 32.0,
        ),
        child: Expanded(
          child: WebView(
            initialUrl:
                '$baseUrl${getProcessCodeFromUrl()}/${activityCode.replaceAll('.', '')}/${resource.fileName}.html',
          ),
        ),
      ),
    );
  }

  setResource(MopeModel mope, String resourceName) {
    for (final MopeRows rows in mope.mopeRows) {
      for (final MopeRowItens rowItem in rows.mopeRowItens) {
        for (final Process process in rowItem.processes) {
          for (final Activity activity in process.activities) {
            if (activityCode == '${process.code}.${activity.activityCode}') {
              for (final Resource resource in activity.activityResources) {
                if (resource.fileName == resourceName) {
                  return resource;
                }
              }
            }
          }
        }
      }
    }
  }

  String? getProcessCodeFromUrl() {
    String url = Modular.to.path;
    RegExp regex = RegExp(r'\/activities\/([\d-]+)\.');
    final String? processCode = regex.firstMatch(url)!.group(1);
    return processCode;
  }
}
