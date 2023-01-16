import 'package:flutter/material.dart';
import 'package:site_documentacao_api/components/header/nasajon_header.dart';
import 'package:site_documentacao_api/components/mope.dart';
import 'package:site_documentacao_api/components/nasajon_footer.dart';

class MopePage extends StatelessWidget {
  const MopePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: ListView(
        padding: const EdgeInsets.only(top: 32),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 256,
              left: 256,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 64.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 56.0, bottom: 96.0),
                        child: Text(
                          'Documentação de Apis',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 32),
                            child: Text(
                              '1. O sistema integrado de gestão empresarial ERP Nasajon',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                          SizedBox(
                            height: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'A sigla ERP (do inglês "Enterprise Resource Planning"), pode ser traduzida como "Sistema Integrado de Gestão Empresarial", e designa sistemas, de variadas envergaduras, que visam centralizar os dados e processos das diversas frentes de atuação de uma empresa cliente.',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Text(
                                  'Na prática, os ERPs se dividem entre sistemas especialistas (focados numa única área de processos empresariais), e sistemas de aplicação ampla (virtualmente capazes de suportar todas as áreas comuns aos mais diversos tipos de organizações).',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Text(
                                  'O ERP Nasajon se enquadra no contexto dos sistemas de aplicação ampla, mas, diferentemente de seus concorrentes, não é focado apenas na simples concentração dos dados, mas principalmente na automação dos processos empresariais.',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Text(
                                  'Neste documento serão apresentadas as mais diversas APIs de integração com o ERP Nasajon 4.0.',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                Text(
                                  'Obs.: Além da documentação dos processos cobertos pelo ERP Nasajon, e suas respectivas APIs (introduzidas a seguir), sugere-se consultar a página de Disposições Gerais das APIs do ERP Nasajon (para tomar ciência dos padrões que regem as APIs como um todo).',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: Text(
                        '2. A Matriz de Operações e Processos Empresariais MOPE Nasajon',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    SizedBox(
                      height: 450,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'A MOPE, é uma iniciativa da Nasajon, criada com o fim de simplificar a descrição dos processos contidos no escopo de seu ERP.Em se tratando de um ERP de aplicação ampla, a simples listagem de todos os processos (módulos, rotas, etc) suportados pelo ERP Nasajon, resultaria num esforço demasiado tedioso para o leitor.',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'Pensando nisso, a Nasajon desenvolveu um formato proprietário de indexação dos processos suportados por seus produtos, denominado "MOPE".',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'A MOPE, por sua vez, herda seus conceitos do internacionalmente reconhecido framework eTom, o qual é amplamente difundido na área de Telecomunicações. A MOPE porém pode ser descrita como uma adaptação conceitual do eTom, destinada à representação matricial dos processos suportados e planejados, para o ERP Nasajon.',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'Como já dito, se uma empresa genérica apresenta áreas de processo comuns como: contas a pagar, contabilidade, contas a receber, gestão de recursos humanos, etc. A MOPE simplemente mapeia esses processos em áreas, e os indexa numa matriz, onde:',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            '•  Linhas: Representam as grandes áreas dos processos de uma empresa.\n\n•  Colunas: Representam as grandes áreas de operação de uma empresa.\n\n•  Células: Representam os processos propriamente ditos.',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Text(
                            'Assim, navegando pela MOPE é possível alcançar qualquer área empresarial suportada pelo ERP e, de igual modo, a própria indexação das APIs do ERP Nasajon. Portanto, clique no processo desejado abaixo para acessar sua página de detalhes e vizualizar suas APIs.',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'Obs.: Caso o item esteja em tom de cinza suas apis ainda não estão disponíveis em sua página de detalhes',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(128, 64, 128, 64),
            child: Mope(),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
