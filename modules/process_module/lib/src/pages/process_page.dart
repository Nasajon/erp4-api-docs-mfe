// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';

import 'package:process_module/src/widgets/process_page_body_widget.dart';

class ProcessPage extends StatelessWidget {
  const ProcessPage({
    Key? key,
    required this.processCode,
  }) : super(key: key);

  final String processCode;

  @override
  Widget build(BuildContext context) {
    final Process process = setProcess(MopeService.getMope(), processCode);

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1080.0),
      child: Scaffold(
        appBar: ReturnAppBar(
          backTo: () => Modular.to.navigate('/'),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1080.0),
            child: ProcessPageBody(process: process),
          ),
        ),
     
        
      ),
    );
  }
}

setProcess(MopeModel mope, String processCode) {
  for (final MopeRows rows in mope.mopeRows) {
    for (final MopeRowItens rowItem in rows.mopeRowItens) {
      for (final Process process in rowItem.processes) {
        if (process.code == processCode.replaceAll('-', '/')) {
          return process;
        }
      }
    }
  }
}
