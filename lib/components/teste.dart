//Teste para futura refatoração

// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:site_documentacao_api/components/builders/column_builder.dart';
// import 'package:site_documentacao_api/models/processes_docs_model.dart';
// import 'package:site_documentacao_api/pages/api_documentation_webview.dart';

// class Teste extends StatelessWidget {
//   const Teste({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<ActivityDoc>>(
//         future: setDocs(),
//         builder: (context, snapshot) {
//           final List<ActivityDoc>? activityDocList = snapshot.data;
//           if (snapshot.connectionState == ConnectionState.done) {
//             return ColumnBuilder(
//                 itemBuilder: (BuildContext context, int index) {
//                   final ActivityDoc activityDoc =
//                       activityDocList.elementAt(index);
//                   return Flexible(
//                     child: InkWell(
//                       // onTap: () => goDocumentationPage(
//                       //     context,
//                       //     '${processItem.processTitle.substring(0, 3)}.${index + 1}. ${item.activityTitle}',
//                       //     item.activityDocumentationUrl),
//                       child: Text(
//                         '${activityDoc.activityNumber}.${activityDoc.activityTitle}',
//                         softWrap: true,
//                         maxLines: 3,
//                         style: Theme.of(context).textTheme.headline4,
//                       ),
//                     ),
//                   );
//                 },
//                 itemCount: activityDocList!.length);
//           }
//           return Container(
//             color: Colors.red,
//           );
//         });
//   }

//   Future<List<ActivityDoc>> setDocs() async {
//     final String json = await rootBundle.loadString('Json/processes_docs.json');
//     final List<ActivityDoc> activityDocList = (jsonDecode(json) as List)
//         .map((model) => ActivityDoc.fromJson(model))
//         .toList();
//     return activityDocList;
//   }

//   void goDocumentationPage(context, String proccessName, String processUrl) {
//     if (processUrl.isNotEmpty) {
//       Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: ((context) => ApiDocumentationWebView(
//                   processName: proccessName, url: processUrl))));
//     }
//   }
// }
