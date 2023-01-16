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
}

class ProcessItens {
  ProcessItens({
    required this.title,
    required this.descriptionFirstParagraph,
    required this.descriptionItens,
    required this.flex,
    required this.isBlankSpace,
    required this.processItensActivities,
  });
  late final String title;
  late final String descriptionFirstParagraph;
  late final List<DescriptionItens> descriptionItens;
  late final int flex;
  late final bool isBlankSpace;
  late final List<ProcessItensActivities> processItensActivities;

  ProcessItens.fromJson(Map<String, dynamic> json) {
    title = json['title'] ?? '';
    descriptionFirstParagraph = json['description_first_paragraph'] ?? '';
    descriptionItens = List.from(json['description_itens'] ?? [])
        .map((e) => DescriptionItens.fromJson(e))
        .toList();
    flex = json['flex'] ?? 0;
    isBlankSpace = json['is_blank_space'] ?? false;
    processItensActivities = List.from(json['process_itens_activities'] ?? [])
        .map((e) => ProcessItensActivities.fromJson(e))
        .toList();
  }
}

class DescriptionItens {
  DescriptionItens({
    required this.itemDescription,
    required this.itemSubitens,
  });
  late final String itemDescription;
  late final List<ItemSubitens> itemSubitens;

  DescriptionItens.fromJson(Map<String, dynamic> json) {
    itemDescription = json['item_description'] ?? '';
    itemSubitens = List.from(json['item_subitens'] ?? [])
        .map((e) => ItemSubitens.fromJson(e))
        .toList();
  }
}

class ItemSubitens {
  ItemSubitens({
    required this.subitemDescription,
    required this.subitemItens,
  });
  late final String subitemDescription;
  late final List<String> subitemItens;

  ItemSubitens.fromJson(Map<String, dynamic> json) {
    subitemDescription = json['subitem_description'] ?? '';
    subitemItens = List.castFrom<dynamic, String>(json['subitem_itens'] ?? []);
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
    title = json['title'] ?? '';
    url = json['url'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['url'] = url;
    return _data;
  }
}
