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
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => ApiDocumentationWebView(
                    processName: activity.title, url: activity.url))));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(20, 82, 100, 122),
        ),
        padding:
            const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8, left: 8.0),
        width: 600,
        height: 50,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8, left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                activity.title,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const Icon(Icons.arrow_forward)
            ],
          ),
        ),
      ),
    );
  }
}
