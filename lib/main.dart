import 'package:flutter/material.dart';
import 'package:site_documentacao_api/pages/mope_page.dart';

import 'package:site_documentacao_api/themes/theme_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';

void main() {
  WebView.platform = WebWebViewPlatform();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final themeSwitch = ThemeController.instance;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: themeSwitch,
        builder: (context, child) {
          return MaterialApp(
            theme: themeSwitch.themeMode,
            title: 'Documentação Apis',
            home: MopePage(),
          );
        });
  }
}
