import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:site_documentacao_api/components/mope.dart';
import 'package:site_documentacao_api/constants/text.dart';
import 'package:site_documentacao_api/models/mope_model.dart';
import 'package:site_documentacao_api/themes/switch_theme_controller.dart';

class MopePage extends StatelessWidget {
  MopePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          actions: [SwitchThemeController()],
          toolbarHeight: 100,
          title: Padding(
            padding: EdgeInsets.only(left: 32),
            child: Row(
              children: [
                SizedBox(
                    width: 200,
                    child: Image.network(
                      'https://nasajon-dev.s3.us-west-2.amazonaws.com/gednasajon/logo/Nasajon.png',
                    )),
                SizedBox(
                    width: 400,
                    height: 45,
                    child: Text(
                      'Documentação de Apis',
                      style: Theme.of(context).textTheme.headline1,
                    ))
              ],
            ),
          )),
      body: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1980),
          child: ListView(
            padding: EdgeInsets.only(right: 64, left: 64, top: 32),
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Introdução',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    Text(
                      resumoErp,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'A Matriz de Operações e Processos Empresariais (MOPE)',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    Text(
                      resumoMope,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 64.0),
                child: Mope(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
