import 'package:flutter/material.dart';
import 'package:site_documentacao_api/models/mope_model.dart';
import 'package:site_documentacao_api/pages/api_documentation_webview.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem(
      {super.key,
      required this.activity,
      required String title,
      required String url});

  final ProcessItensActivities activity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: InkWell(
        child: Text(
          activity.title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => ApiDocumentationWebView(
                      processName: activity.title, url: activity.url))));
        },
      ),
    );
  }
}
