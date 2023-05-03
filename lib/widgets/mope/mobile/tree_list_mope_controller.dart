import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

class TreeListMopeController {
  final MopeModel mope = MopeService.getMope();

  Set<String> setListBySegment(String segment, MopeRows row) {
    final set = <String>{};

    for (final rowItem in row.mopeRowItens) {
      for (final process in rowItem.processes) {
        if (process.segmentType == segment) {
          set.add(process.mopeColumn);
        }
      }
    }
    return set;
  }

  List<Process> setProcessListBySegment(
      String segment, MopeRows row, String number) {
    final List<Process> list = [];

    for (final rowItem in row.mopeRowItens) {
      for (final process in rowItem.processes) {
        if (process.segmentType == segment &&
            process.code.characters.elementAt(1) == number) {
          list.add(process);
        }
      }
    }
    return list;
  }

  List<Process> setGFAProcessListBySegment(
      String segment, MopeRows row, String number) {
    final List<Process> list = [];

    for (final rowItem in row.mopeRowItens) {
      for (final process in rowItem.processes) {
        if (process.segmentType == segment &&
            process.code.characters.elementAt(0) == number) {
          list.add(process);
        }
      }
    }
    return list;
  }

  setListItemName(String item) {
    switch (item) {
      case '1':
        return 'Estratégia';
      case '2':
        return 'Infraestrutura';
      case '3':
        return 'Ciclo de vida de produtos e serviços';
      case '4':
        return 'Suporte, infra, operacional';
      case '5':
        return 'Venda de produtos e serviços';
      case '6':
        return 'Suporte e garantia de produtos e serviços';
      case '7':
        return 'Devolução de produtos e serviços';
      case '8':
        return 'Faturamento e garantia de receita';
      case 'none':
        return '';
    }
  }
}
