import 'dart:async';

import 'package:flutter/material.dart';
import 'package:site_documentacao_api/constants/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ApiDocumentationWebView extends StatefulWidget {
  const ApiDocumentationWebView(
      {Key? key, required this.processName, required this.url})
      : super(key: key);

  final String processName;
  final String url;

  @override
  ApiDocumentationWebViewState createState() => ApiDocumentationWebViewState();
}

class ApiDocumentationWebViewState extends State<ApiDocumentationWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

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
        foregroundColor: nsj_colors_text_dark,

        toolbarHeight: 40,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 64,
          right: 280,
          left: 280,
          bottom: 64,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 64.0),
              child: Text(
                widget.processName,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Expanded(
              child: SizedBox(
                child: WebView(
                  initialUrl: widget.url,
                  onWebViewCreated: (WebViewController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
