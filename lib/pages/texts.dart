final List<String> erpDescription = [
  'A sigla ERP (do inglês "Enterprise Resource Planning"), pode ser traduzida como "Sistema Integrado de Gestão Empresarial", e designa sistemas, de variadas envergaduras, que visam centralizar os dados e processos das diversas frentes de atuação de uma empresa cliente.',
  'Na prática, os ERPs se dividem entre sistemas especialistas (focados numa única área de processos empresariais), e sistemas de aplicação ampla (virtualmente capazes de suportar todas as áreas comuns aos mais diversos tipos de organizações).',
  'O ERP Nasajon se enquadra no contexto dos sistemas de aplicação ampla, mas, diferentemente de seus concorrentes, não é focado apenas na simples concentração dos dados, mas principalmente na automação dos processos empresariais.',
  'Neste documento serão apresentadas as mais diversas APIs de integração com o ERP Nasajon 4.0.',
];
final List<String> mopeDescription = [
  'A MOPE, é uma iniciativa da Nasajon, criada com o fim de simplificar a descrição dos processos contidos no escopo de seu ERP. Em se tratando de um ERP de aplicação ampla, a simples listagem de todos os processos (módulos, rotas, etc) suportados pelo ERP Nasajon, resultaria num esforço demasiado tedioso para o leitor.',
  'Pensando nisso, a Nasajon desenvolveu um formato proprietário de indexação dos processos suportados por seus produtos, denominado "MOPE".',
  'A MOPE, por sua vez, herda seus conceitos do internacionalmente reconhecido framework eTom, o qual é amplamente difundido na área de Telecomunicações. A MOPE porém pode ser descrita como uma adaptação conceitual do eTom, destinada à representação matricial dos processos suportados e planejados, para o ERP Nasajon.',
  'Como já dito, se uma empresa genérica apresenta áreas de processo comuns como: contas a pagar, contabilidade, contas a receber, gestão de recursos humanos, etc. A MOPE simplemente mapeia esses processos em áreas, e os indexa numa matriz, onde:',
  '•  Linhas: Representam as grandes áreas dos processos de uma empresa.\n\n•  Colunas: Representam as grandes áreas de operação de uma empresa.\n\n•  Células: Representam os processos propriamente ditos.',
  'Assim, navegando pela MOPE é possível alcançar qualquer área empresarial suportada pelo ERP e, de igual modo, a própria indexação das APIs do ERP Nasajon. Portanto, clique no processo desejado abaixo para acessar sua página de detalhes e vizualizar suas APIs.',
  'Obs.: Caso o item esteja em tom mais escuro suas apis ainda não estão disponíveis em sua página de detalhes'
];

final List<String> generalDisposalsDescription = [
  'Além da documentação dos processos cobertos pelo ERP Nasajon, e suas respectivas APIs (introduzidas a seguir), há também as Disposições Gerais, onde são apresentados os padrões técnicos comuns à maioria das APIs disponíveis.',
  'Sugere-se a leitura preliminar desta sessão , antes mesmo do estudo de qualquer rota em particular.'
];
final List<String> autenticationDescription = [
  'Os requisitos de segurança de uma API qualquer podem ser bastante abrangentes, de acordo com as necessidades dos recursos e do negócio tratado, mas, ao mesmo tempo em que estes são uma regra, também é necessário certo nível de ponderação e equilíbro, para não se incorrer em overheads e complexidade desnecessários.',
  'O mais importante neste sentido é que o analista responsável tenha em mente que a segurança deve ser pensada ainda na fase de definição das APIs (Security First), isto é, sem excessos, deve-se perceber que as questões de segurança impactam diretamente na implementação e na usabilidade das APIs.',
  'Nesta sessão é apresentado o modelo sugerido pela Nasajon para autenticação dos usuários.'
];

final List<String> generalDisposalsFirstTableContent = [
  'Prorpiedade,criado_em,criado_por,atualizado_em,atualizado_por',
  'Tipo,date_time,uuid,date-time,uuid',
  'Descrição,Data e hora de cadastro do registro.,Identificador único interno do usuário responsável pelo cadastro.,Data e hora da última atualização do registro.,Identificador único interno do usuário responsável pela última atualização.'
];
final List<String> generalDisposalsSecondTableContent = [
  'Parãmetro,limit,offset',
  'Tipo,integer,string',
  'Descrição,Indica o número máximo de registros a retornar (limitado a 250).,Indica o salto inicial na consulta dos registros. É o Identificador do último item da página anterior da listagem.'
];
