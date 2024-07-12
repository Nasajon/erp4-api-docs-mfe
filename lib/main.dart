import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';

import 'package:site_documentacao_api/app/app_module.dart';
import 'package:site_documentacao_api/app/app_widget.dart';

void main() async {
  WebViewPlatform.instance = WebWebViewPlatform();
  WidgetsFlutterBinding.ensureInitialized();
  // usePathUrlStrategy();

  await MopeService.saveMope();
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
