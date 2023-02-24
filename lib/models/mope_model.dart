class MopeModel {
  MopeModel({
    required this.mopeRows,
  });
  late final List<MopeRows> mopeRows;

  MopeModel.fromJson(Map<String, dynamic> json) {
    mopeRows =
        List.from(json['mope_rows']).map((e) => MopeRows.fromJson(e)).toList();
  }
}

class MopeRows {
  MopeRows({
    required this.mopeRowNumber,
    required this.mopeRowTitle,
    required this.mopeRowItens,
  });
  late final int mopeRowNumber;
  late final String mopeRowTitle;
  late final List<MopeRowItens> mopeRowItens;

  MopeRows.fromJson(Map<String, dynamic> json) {
    mopeRowNumber = json['mope_row_number'];
    mopeRowTitle = json['mope_row_title'];
    mopeRowItens = List.from(json['mope_row_itens'])
        .map((e) => MopeRowItens.fromJson(e))
        .toList();
  }
}

class MopeRowItens {
  MopeRowItens({
    required this.name,
    required this.processes,
  });
  late final String name;
  late final List<Process> processes;

  MopeRowItens.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    processes = List.from(json['processes'] ?? [])
        .map((e) => Process.fromJson(e))
        .toList();
  }
}

class Process {
  Process({
    required this.processCode,
    required this.processTitle,
    required this.processDescription,
    required this.processActivities,
    required this.flex,
    required this.isBlankSpace,
    // required this.processItensActivities,
  });
  late final String processCode;
  late final String processTitle;
  late final String processDescription;
  late final List<Activity> processActivities;
  late final int flex;
  late final bool isBlankSpace;
  // late final List<ProcessItensActivities> processItensActivities;

  Process.fromJson(Map<String, dynamic> json) {
    processCode = json["process_code"] ?? '';
    processTitle = json['process_title'] ?? '';
    processDescription = json['process_description'] ?? '';
    processActivities = List.from(json['process_activities'] ?? [])
        .map((e) => Activity.fromJson(e))
        .toList();
    flex = json['flex'] ?? 0;
    isBlankSpace = json['is_blank_space'] ?? false;
    //   processItensActivities = List.from(json['process_itens_activities'] ?? [])
    //       .map((e) => ProcessItensActivities.fromJson(e))
    //       .toList();
    // }
  }
}

class Activity {
  Activity({
    required this.activityCode,
    required this.activityTitle,
    required this.activityDescription,
    required this.activityDescriptionSubitens,
  });
  late final String activityCode;
  late final String activityTitle;
  late final String activityDescription;
  late final List<ActivityDescriptionSubitens> activityDescriptionSubitens;

  late final List<Resource> activityResources;

  Activity.fromJson(Map<String, dynamic> json) {
    activityCode = json['activity_code'] ?? '';
    activityTitle = json['activity_title'] ?? '';
    activityDescription = json['activity_description'] ?? '';

    activityDescriptionSubitens =
        List.from(json['activity_description_subitens'] ?? [])
            .map((e) => ActivityDescriptionSubitens.fromJson(e))
            .toList();
    activityResources = List.from(json['activity_resources'] ?? [])
        .map((e) => Resource.fromJson(e))
        .toList();
  }
}

class Resource {
  Resource({
    required this.resourceTitle,
    required this.resourceDocumentationUrl,
    required this.fileName,
  });

  late final String resourceDocumentationUrl;
  late final String resourceTitle;
  late final String fileName;

  Resource.fromJson(Map<String, dynamic> json) {
    resourceTitle = json['resource_title'] ?? '';
    fileName = json['file_name'] ?? '';
    resourceDocumentationUrl = json['resource_documentation_url'] ?? '';
  }
}

class ActivityDescriptionSubitens {
  ActivityDescriptionSubitens({
    required this.subitemDescription,
    required this.subitemItens,
  });
  late final String subitemDescription;
  late final List<String> subitemItens;

  ActivityDescriptionSubitens.fromJson(Map<String, dynamic> json) {
    subitemDescription = json['subitem_description'] ?? '';
    subitemItens = List.castFrom<dynamic, String>(json['subitem_itens'] ?? []);
  }
}
