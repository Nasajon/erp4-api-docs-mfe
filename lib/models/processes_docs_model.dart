// Teste para futura refatoração

// class ActivityDoc {
//   ActivityDoc({
//     required this.activityTitle,
//     required this.activityNumber,
//     required this.activityDocumentationUrl,
//     required this.resourceDocs,
//   });
//   late final String activityTitle;
//   late final String activityNumber;
//   late final String activityDocumentationUrl;
//   late final List<ResourceDoc> resourceDocs;
//   ActivityDoc.fromJson(Map<String, dynamic> json) {
//     activityTitle = json['activity_title'] ?? '';
//     activityNumber = json['activity_number'] ?? '';
//     activityDocumentationUrl = json['activity_documentation_url'] ?? '';
//     resourceDocs = List.from(json['activity_resources'] ?? [])
//         .map((e) => ResourceDoc.fromJson(e))
//         .toList();
//   }
// }

// class ResourceDoc {
//   ResourceDoc({
//     required this.resourceTitle,
//     required this.resourceDocumentationUrl,
//   });
//   late final String resourceTitle;
//   late final String resourceDocumentationUrl;

//   ResourceDoc.fromJson(Map<String, dynamic> json) {
//     resourceTitle = json['resource_title'] ?? '';
//     resourceDocumentationUrl = json['resource_documentation_url'] ?? '';
//   }
// }
