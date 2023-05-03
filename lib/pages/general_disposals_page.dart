import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';
import 'package:site_documentacao_api/pages/texts.dart';
import 'package:site_documentacao_api/widgets/mope/web/code_box_widget.dart';

import 'package:site_documentacao_api/widgets/mope/web/custom_table_widget.dart';
import 'package:site_documentacao_api/widgets/web_sections/footer_widget.dart';

class GerneralDisposalsPage extends StatelessWidget {
  const GerneralDisposalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReturnAppBar(backTo: () => Modular.to.navigate('/')),
      body: ListView(
        children: [
          Padding(
            padding: NsjPadding.horizontalMedium(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: NsjPadding.verticalLarge(context),
                  child: Text(
                    'Disposições Gerais das APIs do ERP Nasajon (ERP 4.0)',
                    style: NsjText.titleLarge(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomMedium(context),
                  child: Text(
                    '1. Das Entidades',
                    style: NsjText.titleMedium(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomSmall(context),
                  child: Text(
                    'A maioria das entidades tratadas pelas APIs do ERP Nasajon apresentam as seguintes propriedades comuns, presentes em qualquer representação expandida dos respectivos dados:',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomLarge(context),
                  child:
                      CustomTable(content: generalDisposalsFirstTableContent),
                ),
                Padding(
                  padding: NsjPadding.bottomMedium(context),
                  child: Text(
                    '2. Das Rotas',
                    style: NsjText.titleMedium(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomMedium(context),
                  child: Text(
                    'Parâmetro Fields',
                    style: NsjText.titleExtraSmall(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomSmall(context),
                  child: Text(
                    'A maioria das rotas de recuperação de recursos (normalmente ligadas ao método HTTP GET), suporta o parêmtro fields, o qual funciona como um indicador das propriedades que se desejam acessar para os objetos.',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomSmall(context),
                  child: Text(
                    'Em resumo, as APIs do ERP Nasajon trabalham com um paradigma de retorno enxuto, de modo que as representações expandidas dos objetos, em sua maioria, abrangem apenas as propriedades de identificações de tais objetos.',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomSmall(context),
                  child: Text(
                    'Caso se deseje uma propriedade complementar, é necessário especificar a mesma por meio do parâmetro fields (passado euquanto query parameter nas chamadas).',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomSmall(context),
                  child: Text(
                    'Caso se deseje uma propriedade complementar, é necessário especificar a mesma por meio do parâmetro fields (passado euquanto query parameter nas chamadas).',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                Text(
                  'Esse parâmetro recebe uma lista de propriedades separadas por vírgula, e se for necessário especificar uma propriedades de uma entidade relacionada, deve-se adicionar a mesma entre parênteses, ou usando o padrão de propriedades com ".". Ambas as sintaxes são igualmente aceitas. Ver exemplo abaixo (possível na recuperação de um Produto):',
                  style: NsjText.bodyLarge(context),
                ),
                const CodeBox(
                    text:
                        'fields=ncm,preco_venda,unidade_padrao(casas_decimais,padrao,razao_conversao)'),
                const CodeBox(
                    text:
                        'fields=ncm,preco_venda,unidade_padrao.casas_decimais,unidade_padrao.padrao,unidade_padrao.razao_conversao)'),
                Padding(
                  padding: NsjPadding.verticalMedium(context),
                  child: Text(
                    'Parâmetro Expand',
                    style: NsjText.titleExtraSmall(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomSmall(context),
                  child: Text(
                    'A maioria das rotas de recuperação de recursos (normalmente ligadas ao método HTTP GET), suporta o parâmetro expand, o qual indica se os relacionamentos devem ou não ser expandidos em um JSON aninhado ao recursos pedido.',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomSmall(context),
                  child: Text(
                    'Essa parâmetro é opcional e pode ser passado como query parameter nas chamadas.',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomSmall(context),
                  child: Text(
                    'Se o parâmetro fields também for passado, e contiver indicação a uma propriedade de uma entidade relacionada, tal entidade será expandida independente do uso do parâmetro expand.',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                Text(
                  'A sintaxe padrão de uso é:',
                  style: NsjText.bodyLarge(context),
                ),
                const CodeBox(
                    text: 'expand=propriedade1,propriedade2,propriedade3'),
                Text(
                  'E, os valores false ou null são tratados de modo equivalente.',
                  style: NsjText.bodyLarge(context),
                ),
                Padding(
                  padding: NsjPadding.verticalMedium(context),
                  child: Text(
                    'Padrão de Resposta para Erros',
                    style: NsjText.titleExtraSmall(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomSmall(context),
                  child: Text(
                    'Todos os retornos com erro seguem o seguinte padrão de reposta:',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                const CodeBox(text: '''{ 
    "errors": [ 
        { 
            "code": "<CÓDIGO MOPE DO ERRO - MOPE_CODE-E000)>",
            "msg": "<MENSAGEM DESCRITIVA DO ERRO OCORRIDO>" 
        } 
    ] 
}'''),
                Padding(
                  padding: NsjPadding.bottomSmall(context),
                  child: Text(
                    'Todos os erros ocorridos numa requisição são retornados numa lista, de modo que o a aplicação cliente poderá tratar os erros numa única interação com o servidor do ERP Nasajon.',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                Text(
                  'Além disso, o código dos erros segue o padrão:',
                  style: NsjText.bodyLarge(context),
                ),
                const CodeBox(text: '4311-E001'),
                Text(
                  'Por exemplo:',
                  style: NsjText.bodyLarge(context),
                ),
                const CodeBox(
                    text:
                        '<NÚMERO DO PROCESSO MOPE>-E<INTEIRO INCREMENTAL COM 3 DÍGITOS>'),
                Padding(
                  padding: NsjPadding.verticalMedium(context),
                  child: Text(
                    'Paginação das Respostas',
                    style: NsjText.titleExtraSmall(context),
                  ),
                ),
                Padding(
                  padding: NsjPadding.bottomSmall(context),
                  child: Text(
                    'A maioria das rotas de recuperação de listagem de objetos (HTTP GET, sem especificiação de identificador de objeto), apresenta um padrão de retorno paginado. Deste modo, as APIS do ERP Nasajon são pouco suscetíveis a ocorrência de timeouts (por demora do servidor) em suas chamadas.',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                CustomTable(content: generalDisposalsSecondTableContent),
                Padding(
                  padding: NsjPadding.verticalSmall(context),
                  child: Text(
                    'Além disso, o próprio formato JSON das respostas também é padronizado, de forma a facilitar o tratamento do retorno por parte da aplicação cliente:',
                    style: NsjText.bodyLarge(context),
                  ),
                ),
                const CodeBox(text: '''{ 
    "count": <NÚMERO DE REGISTROS RETORNADOS NA LISTA "results">,
    "next": <URL PARA RETORNO DA PRÓXIMA PÁGINA>, 
    "results": [ 
        { 
            <JSON DO OBJETO EM SI> 
        }, 
        ... 
    ] 
}'''),
                Padding(
                  padding: NsjPadding.verticalSmall(context),
                  child: Text(
                    'Obs.: Este formato de retorno se inspira no padrão REST navegável, para facilitar o uso das APIs do ERP Nasajon.',
                    style: NsjText.bodyLarge(context)!.copyWith(
                        color: AnaColors.darkBlue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: NsjPadding.topLarge(context),
            child: const Footer(),
          )
        ],
      ),
    );
  }
}
