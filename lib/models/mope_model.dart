class MopeModel {
  MopeModel({
    required this.mopeRows,
  });
  late final List<MopeRows> mopeRows;

  MopeModel.fromJson(Map<String, dynamic> json) {
    mopeRows =
        List.from(json['mope_rows']).map((e) => MopeRows.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mope_rows'] = mopeRows.map((e) => e.toJson()).toList();
    return _data;
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

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mope_row_number'] = mopeRowNumber;
    _data['mope_row_title'] = mopeRowTitle;
    _data['mope_row_itens'] = mopeRowItens.map((e) => e.toJson()).toList();
    return _data;
  }
}

class MopeRowItens {
  MopeRowItens({
    required this.name,
    required this.processItens,
  });
  late final String name;
  late final List<ProcessItens> processItens;

  MopeRowItens.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    processItens = List.from(json['process_itens'])
        .map((e) => ProcessItens.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['process_itens'] = processItens.map((e) => e.toJson()).toList();
    return _data;
  }
}

class ProcessItens {
  ProcessItens({
    required this.title,
    required this.flex,
    required this.isBlankSpace,
    this.processItensActivities,
    required this.subtitle,
    required this.description,
  });
  late final String title;
  late final String subtitle;
  late final String description;
  late final int flex;
  late final bool isBlankSpace;
  late final List<ProcessItensActivities>? processItensActivities;

  ProcessItens.fromJson(Map<String, dynamic> json) {
    title = json['title'] ?? '';
    subtitle = json['subtitle'] ?? '';
    description = json['description'] ?? '';
    flex = json['flex'];
    isBlankSpace = json['is_blank_space'];
    processItensActivities = List.from(json['process_itens_activities'] ?? [])
        .map((e) => ProcessItensActivities.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['flex'] = flex;
    _data['is_blank_space'] = isBlankSpace;
    _data['process_itens_activities'] =
        processItensActivities?.map((e) => e.toJson()).toList();
    return _data;
  }
}

class ProcessItensActivities {
  ProcessItensActivities({
    required this.title,
    required this.url,
  });
  late final String title;
  late final String url;

  ProcessItensActivities.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['url'] = url;
    return _data;
  }
}
