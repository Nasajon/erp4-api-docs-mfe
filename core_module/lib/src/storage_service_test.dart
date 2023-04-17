import 'dart:convert';
import 'dart:html';

import 'package:core_module/core_module.dart';
import 'package:flutter/services.dart';

class MopeService {
  static Future<void> saveMope() async {
    final String json =
        await rootBundle.loadString('assets/Json/mope_constructor.json');
    final MopeModel mope = MopeModel.fromJson(jsonDecode(json));
    final jsonString = jsonEncode(mope.toJson());
    window.localStorage['mope'] = jsonString;
  }

  static MopeModel getMope() {
    final jsonString = window.localStorage['mope'];
    final jsonMap = jsonDecode(jsonString!);
    return MopeModel.fromJson(jsonMap);
  }
}
