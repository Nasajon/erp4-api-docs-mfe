class MopeModel {
  MopeModel({
    required this.mopeRows,
  });
  late final List<MopeRows> mopeRows;

  MopeModel.fromJson(Map<String, dynamic> json) {
    mopeRows = List.from(json['mope_rows'] ?? [])
        .map((e) => MopeRows.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mope_rows'] = mopeRows.map((e) => e.toJson()).toList();
    return data;
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
    mopeRowNumber = json['mope_row_number'] ?? [];
    mopeRowTitle = json['mope_row_title'] ?? [];
    mopeRowItens = List.from(json['mope_row_itens'] ?? [])
        .map((e) => MopeRowItens.fromJson(e))
        .toList();
  }
  Map<String, dynamic> toJson() => {
        'mope_row_number': mopeRowNumber,
        'mope_row_title': mopeRowTitle,
        'mope_row_itens': mopeRowItens.map((e) => e.toJson()).toList(),
      };
}

class MopeRowItens {
  MopeRowItens({
    required this.name,
    required this.processes,
  });
  late final String name;
  late final List<Process> processes;

  MopeRowItens.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    processes = List.from(json['processes'] ?? [])
        .map((e) => Process.fromJson(e))
        .toList();
  }
  Map<String, dynamic> toJson() => {
        'name': name,
        'processes': processes.map((e) => e.toJson()).toList(),
      };
}

class Process {
  Process({
    required this.code,
    required this.title,
    required this.description,
    required this.activities,
    required this.flex,
    required this.isBlankSpace,
    // required this.processItensActivities,
  });
  late final String code;
  late final String title;
  late final String description;
  late final List<Activity> activities;
  late final int flex;
  late final bool isBlankSpace;
  // late final List<ProcessItensActivities> processItensActivities;

  Process.fromJson(Map<String, dynamic> json) {
    code = json["process_code"] ?? '';
    title = json['process_title'] ?? '';
    description = json['process_description'] ?? '';
    activities = List.from(json['process_activities'] ?? [])
        .map((e) => Activity.fromJson(e))
        .toList();
    flex = json['flex'] ?? 0;
    isBlankSpace = json['is_blank_space'] ?? false;
  }
  Map<String, dynamic> toJson() => {
        'process_code': code,
        'process_title': title,
        'process_description': description,
        'process_activities': activities.map((e) => e.toJson()).toList(),
        'flex': flex,
        'is_blank_space': isBlankSpace,
      };
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
  Map<String, dynamic> toJson() => {
        'activity_code': activityCode,
        'activity_title': activityTitle,
        'activity_description': activityDescription,
        'activity_description_subitens':
            activityDescriptionSubitens.map((e) => e.toJson()).toList(),
        'activity_resources': activityResources.map((e) => e.toJson()).toList(),
      };
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
  Map<String, dynamic> toJson() => {
        'resource_title': resourceTitle,
        'resource_documentation_url': resourceDocumentationUrl,
        'file_name': fileName,
      };
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
  Map<String, dynamic> toJson() => {
        'subitem_description': subitemDescription,
        'subitem_itens': subitemItens,
      };
}
