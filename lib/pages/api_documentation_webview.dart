import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
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
        title: Text(widget.processName),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 32,
          right: 280,
          left: 280,
        ),
        child: WebView(
          initialUrl: widget.url,
          onWebViewCreated: (WebViewController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }
}
