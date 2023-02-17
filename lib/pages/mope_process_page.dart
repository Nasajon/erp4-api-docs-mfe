import 'package:flutter/material.dart';
import 'package:site_documentacao_api/components/activity_details_dialog.dart';
import 'package:site_documentacao_api/components/builders/column_builder.dart';

import 'package:site_documentacao_api/constants/colors.dart';
import 'package:site_documentacao_api/models/mope_model.dart';
import 'package:site_documentacao_api/pages/api_documentation_webview.dart';

class MopeProcessPage extends StatelessWidget {
  const MopeProcessPage({
    super.key,
    required this.processItem,
  });

  final Process processItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          color: const Color.fromARGB(50, 0, 0, 0),
          margin: const EdgeInsets.only(left: 260),
          padding: const EdgeInsets.only(left: 8),
          width: 300,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
              const Text(
                'Voltar à página anterior',
                style: TextStyle(color: nsj_colors_text_dark, fontSize: 14),
              ),
            ],
          ),
        ),
        // leadingWidth: 25,
        backgroundColor: nsj_colors_primary,

        toolbarHeight: 40,
      ),
      body: ListView(
        padding:
            const EdgeInsets.only(top: 72, right: 280, left: 280, bottom: 128),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Text(
                    processItem.processTitle,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    'Objetivo',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Text(
                    processItem.processDescription,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    'Atividades',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Text(
                    'A seguir serão listadas as atividades referentes à este processo. Clique no título da atividade ou em um de seus recursos para acessar sua documentação',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                ColumnBuilder(
                    showDivider: true,
                    dividerPadding:
                        const EdgeInsets.only(top: 32.0, bottom: 32.0),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    itemBuilder: (BuildContext context, int index) {
                      final item =
                          processItem.processActivities.elementAt(index);

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
                                      child: InkWell(
                                        onTap: () => goDocumentationPage(
                                            context,
                                            item.activityTitle,
                                            item.activityDocumentationUrl),
                                        child: Text(
                                          item.activityTitle,
                                          softWrap: true,
                                          maxLines: 3,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                        ),
                                      ),
                                    ),
                                    setInfoButton(item, context)
                                  ],
                                ),
                                setResourcesSection(item, context)
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: processItem.processActivities.length),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void goDocumentationPage(context, String proccessName, String processUrl) {
    if (processUrl.isNotEmpty) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => ApiDocumentationWebView(
                  processName: proccessName, url: processUrl))));
    }
  }

  Widget setInfoButton(Activity activity, context) {
    if (activity.activityDescription.isEmpty) {
      return const SizedBox();
    }
    return IconButton(
        tooltip: "Detalhes da atividade",
        color: nsj_colors_primary,
        splashRadius: 15,
        onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context) {
              return ActivituDetailsDialog(
                activity: activity,
              );
            }),
        icon: const Icon(
          Icons.info_outlined,
          size: 16,
        ));
  }

  Widget setResourcesSection(Activity activity, context) {
    if (activity.activityResources.isEmpty) {
      return const SizedBox();
    }
    return Column(
      children: [
        Text(
          'Recursos',
          style: Theme.of(context).textTheme.headline5,
        ),
        ColumnBuilder(
            itemBuilder: ((context, index) {
              final resource = activity.activityResources.elementAt(index);
              return InkWell(
                onTap: () {
                  goDocumentationPage(context, resource.resourceTitle,
                      resource.resourceDocumentationUrl);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    '• ${resource.resourceTitle}',
                  ),
                ),
              );
            }),
            itemCount: activity.activityResources.length)
      ],
    );
  }
}
