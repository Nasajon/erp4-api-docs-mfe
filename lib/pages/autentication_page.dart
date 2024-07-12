import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';
import 'package:site_documentacao_api/widgets/mope/web/code_box_widget.dart';
import 'package:site_documentacao_api/widgets/web_sections/footer_widget.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
  
}




class _AuthenticationPageState extends State<AuthenticationPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isAtBottom = false;

 @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      if (!_isAtBottom) {
        setState(() {
          _isAtBottom = true;
        });
      }
    } else {
      if (_isAtBottom) {
        setState(() {
          _isAtBottom = false;
        });
      }
    }
  }
    @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      bottomNavigationBar: Visibility(visible: _isAtBottom, child: Footer()),
      appBar: ReturnAppBar(backTo: () => Modular.to.navigate('/')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1280),
          child: ListView(
            padding: NsjPadding.bottomExtraLarge(context),
            controller: _scrollController,
            children: [
              Padding(
                padding: NsjPadding.horizontalMedium(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: NsjPadding.verticalLarge(context),
                      child: Text(
                        'Autenticação',
                        style: NsjText.titleLarge(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomMedium(context),
                      child: Text(
                        'Access-Tokens',
                        style: NsjText.titleMedium(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Em resumo, após a apresentação das credencias de Conta e Senha ao Servidor de Autenticação (Authentication Server), este servidor entrega ao usuário um JSON contendo diversas informações, destacando-se:',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Access-Token: Token único de identificação do usuário, com validade pré-determinada, e passível de ser apresentado a qualquer Servidor de Recursos associado (o que não garante a autorização do usuário, mas sim sua autenticidade).',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Refresh-Token: Token único que também identifica o usuário, mas não pode ser apresentado aos Servidores de Recursos, antes, serve apenas para obtenção de um novo Access-Token, junto ao Servidor de Autenticação, após a expiração do mesmo, e sem a exigência de um novo processo login. Sendo que este Refersh-Token também possui validade pré-determinada (normalmente muito maior; tipicamente 24 horas).',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.verticalMedium(context),
                      child: Text(
                        'Comportamento da aplicação cliente',
                        style: NsjText.titleSmall(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Toda aplicação cliente precisará, em primeiro lugar, se autenticar junto ao Servidor de Autenticação da Nasajon, antes de fazer qualquer chamada a uma API de um produto qualquer.',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'A seguir, apresentaremos as requisição de autenticação (para aplicações mobile ou desktop), bem como o modo de renovação do access_token recebido (após expiração do mesmo), e como proceder para as chamadas às APIs em si.',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.verticalMedium(context),
                      child: Text(
                        'Autenticando um usuário',
                        style: NsjText.titleExtraSmall(context),
                      ),
                    ),
                    Text(
                      'Invocar o endpoint protocol/openid-connect/token, por meio do método HTTP POST, passando as credenciais de usuário. Segue padrão de requisição:',
                      style: NsjText.bodyLarge(context),
                    ),
                    const CodeBox(
                        text:
                            '''POST https://auth.nasajon.com.br/auth/realms/master/protocol/openid-connect/token HTTP/1.1
          content-type: application/x-www-form-urlencoded
          
          client_id=<CLIENT_ID>&client_secret=<CLIENT_SECRET>&scope=offline_access&grant_type=password&username=<EMAIL LOGIN USUARIO>&password=<SENHA>'''),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Note que o corpo da requisição POST deve ser codificado segundo o padrão "x-www-form-urlencoded".',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  É necessário, em primeiro lugar, obter um CLIENT_ID e um CLIENT_SECRET para realizar a chamada, o qual identifica a aplicação cliente (esses dados são gerados no momento do cadastro da sua aplicação cliente, junto ao Servidor de Autenticação o que será realizado pela equipe de DEVOPS).',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Variações de URL:',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Produção (PROD): https://auth.nasajon.com.br/auth/realms/master/protocol/openid-connect/token',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Desenvolvimento (DEV): https://auth.dev.nasajonsistemas.com.br/auth/realms/DEV/protocol/openid-connect/token',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Homologação (QA): https://auth.nasajonsistemas.com.br/auth/realms/QA/protocol/openid-connect/token',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'A resposta esperada para essa requisição é de acordo com o padrão a seguir:',
                      style: NsjText.bodyLarge(context),
                    ),
                    const CodeBox(text: '''HTTP/1.1 200 OK 
          Content-Type: application/json
          
          { 
              "access_token": "eyJhbGciOiJSUzUxMiIsInR5cCIgOiAiSldU...",
              "expires_in": 86400, 
              "refresh_expires_in": 0, 
              "refresh_token": "eyJhbGciOiJSUzUxMiIsInR5cCIgOiAiSldU...", 
              "token_type": "bearer", 
              "not-before-policy": 1611009366, 
              "session_state": "4fe8e300-d5af-4f28-9879-35efd5ab50e5", 
              "scope": "profile email offline_access"
          }'''),
                    Padding(
                      padding: NsjPadding.verticalSmall(context),
                      child: Text(
                        'Obs.: Caso as credenciais passadas não sejam reconhecidas, será retornado HTTP 401 (Não Autorizado).',
                        style: NsjText.bodyLarge(context)!.copyWith(
                            color: AnaColors.darkBlue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Note que o retorno contém as seguintes informações:',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Acess_token: Token de autenticação gerado para o usuário, a ser usado para chamadas futuras às APIs.',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Expires_in: Tempo de expiração do token, em segundos (86400 corresponde a 24 horas).',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Refresh_token: Token a ser usado para obtenção de um novo access_token, após expiração do recebido.',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.verticalSmall(context),
                      child: Text(
                        'Obs.: Sugere-se encapsular, nas aplicações cliente, o controle de expiração e renovação do token numa única classe: renovando automaticamente o access_token, por meio do refresh_token, quando necessário (considerando também um intervalo de segurança razoável, para o controle de expiração).',
                        style: NsjText.bodyLarge(context)!.copyWith(
                            color: AnaColors.darkBlue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.verticalMedium(context),
                      child: Text(
                        'Renovando o access_token (por meio do refresh_token)',
                        style: NsjText.titleExtraSmall(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Invocar o endpoint /protocol/openid-connect/token, por meio do método HTTP POST, passando o refresh_token anteriormente recebido:',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    const CodeBox(
                        text:
                            '''POST https://auth.nasajon.com.br/auth/realms/master/protocol/openid-connect/token HTTP/1.1
          content-type: application/x-www-form-urlencoded
          
          client_id=<CIENT_ID>&client_secret=<CLIENT_SECRET>&grant_type=refresh_token&refresh_token=<REFRESH_TOKEN>'''),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Note que o corpo da requisição POST deve ser codificado segundo o padrão "x-www-form-urlencoded".',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  É necessário, em primeiro lugar, obter um CLIENT_ID e um CLIENT_SECRET para realizar a chamada, o qual identifica a aplicação cliente (esses dados são gerados no momento do cadastro da sua aplicação cliente, junto ao Servidor de Autenticação o que será realizado pela equipe de DEVOPS).',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Considere as mesmas variações de URL da sessão anterior.',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'A resposta esperada para essa requisição é de acordo com o padrão a seguir:',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    const CodeBox(text: '''HTTP/1.1 200 OK 
          Content-Type: application/json
          
          { 
              "access_token": "eyJhbGciOiJSUzUxMiIsInR5cCIgOiAiSldU...",
              "expires_in": 86400, 
              "refresh_expires_in": 0, 
              "refresh_token": "eyJhbGciOiJSUzUxMiIsInR5cCIgOiAiSldU...", 
              "token_type": "bearer", 
              "not-before-policy": 1611009366, 
              "session_state": "4fe8e300-d5af-4f28-9879-35efd5ab50e5", 
              "scope": "profile email offline_access"
          }'''),
                    Padding(
                      padding: NsjPadding.verticalSmall(context),
                      child: Text(
                        'Obs.: Caso as credenciais passadas não sejam reconhecidas, será retornado HTTP 401 (Não Autorizado).',
                        style: NsjText.bodyLarge(context)!.copyWith(
                            color: AnaColors.darkBlue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'A resposta esperada para essa requisição é de acordo com o padrão a seguir:',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Acess_token: Token de autenticação gerado para o usuário, a ser usado para chamadas futuras às APIs.',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Expires_in: Tempo de expiração do token, em segundos (86400 corresponde a 24 horas).',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        '•  Refresh_token: Token a ser usado para obtenção de um novo access_token, após expiração do recebido.',
                        style: NsjText.bodyLarge(context)!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.verticalMedium(context),
                      child: Text(
                        'Invocando uma API de produto',
                        style: NsjText.titleExtraSmall(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Após a autenticação do usuário, este irá fazer suas requisições aos Servidores de Recursos, apresentando seu respectivo Acess-Token, usando o HTTP header Authorization, conforme um dos formatos a seguir:',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    const CodeBox(text: 'Authorization: Bearer <access_token>'),
                    const CodeBox(text: 'Authorization: <access_token>'),
                    Padding(
                      padding: NsjPadding.verticalSmall(context),
                      child: Text(
                        'Obs. 1: Sugere-se preferência ao primeiro formato, porém ambos são aceitos no contexto da Nasajon (sendo preciso verificar o formato aceito pela API em questão).',
                        style: NsjText.bodyLarge(context)!.copyWith(
                            color: AnaColors.darkBlue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.verticalSmall(context),
                      child: Text(
                        'Obs. 2: Se o servidor responder com um HTTP 401, pode ser necessário, à aplicação cliente, solicitar um novo Access-Token ao Servidor de Autenticação, apresentando o Refresh-Token disponível (se houver algum).',
                        style: NsjText.bodyLarge(context)!.copyWith(
                            color: AnaColors.darkBlue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.verticalMedium(context),
                      child: Text(
                        'Comportamento do Servidor de Recursos',
                        style: NsjText.titleSmall(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'No lado do Servidor de Recursos, quando o mesmo recebe uma requisição com o respectivo HTTP header, cabe a ele validar o Access-Token recebido, bem como verificar a autorização de acesso do usuário (após autenticado).',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Para validar um Access-Token, o Servidor de Recursos deve chamar um dos endpoints do Servidor de Autenticação, conforme descrito a seguir:',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.verticalMedium(context),
                      child: Text(
                        'User Info',
                        style: NsjText.titleExtraSmall(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Chamar o endpoint protocol/openid-connect/userinfo por meio do metodo GET, passando o próprio token a ser validado, como credencial de acesso, isto é, no header Authorization.',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    const CodeBox(
                        text:
                            '''GET https://auth.nasajon.com.br/auth/realms/master/protocol/openid-connect/userinfo HTTP/1.1
          Accept: application/json
          Authorization: Bearer <access_token>'''),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'A resposta esperada para essa requisição é de acordo com o padrão a seguir:',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    const CodeBox(text: '''HTTP/1.1 200 OK 
          Content-Type: application/json
          
          {
              "name": "<nome do usuário>", 
              "preferred_username": "<conta Nasajon - e-mail>",
              "email": "<e-mail do usuário - repete a conta Nasajon" 
          }'''),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'A resposta esperada para essa requisição é de acordo com o padrão a seguir:',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    const CodeBox(text: '''HTTP/1.1 401 Unauthorized 
          Content-Type: application/json
          
          {
              "error": "invalid_token", 
              "error_description": "<descrição do erro de autenticação>",
          }'''),
                    Padding(
                      padding: NsjPadding.verticalSmall(context),
                      child: Text(
                        'Obs. 1: Este método de validação do token é um pouco menos seguro que o apresentado a seguir, porque no próximo, como veremos, a aplicação cliente (Servidor de Recursos) precisará se identificar junto ao Servidor de Autenticação, para validar um token (evitando que uma aplicação desconhecida tente validar tokens, por exemplo, para verificar se um "token vazado" ainda é válido).',
                        style: NsjText.bodyLarge(context)!.copyWith(
                            color: AnaColors.darkBlue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.verticalSmall(context),
                      child: Text(
                        'Obs. 2: O "problema de segurança" apontado na observação anterior não é tão sério, pois o Keycloack (que a Nasajon utiliza como implementação do OAuth 2), está preparado para detactar ataques de força bruta (que seria uma alternativa ao vazamento de tokens), e porque o vazamento de tokens é muito pouco provável, uma vez que utilizamos criptografia TLS.',
                        style: NsjText.bodyLarge(context)!.copyWith(
                            color: AnaColors.darkBlue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.verticalMedium(context),
                      child: Text(
                        'Token Introspection',
                        style: NsjText.titleExtraSmall(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Chamar o endpoint protocol/openid-connect/token/introspection por meio do método POST, passando o token a ser validado, e passando como credenciais (para uso próprio endpoint), o client_id e o client_secret do sistema atuando como cliente (que deve ter sido previamente cadastrado junto ao Servidor de Autenticação - ocasião na qual o client_id e o client_secret são gerados).',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Além disso, esta chamada (do Servidor de Recursos para o de Autenticação), usa autenticação do tipo BASIC, portanto as credenciais deve ser passadas por meio do header Authorization, mas usando o valor Basic. O qual se trata da codificação, em base64, da string client_id:client_secret.',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Segue padrão de chamada:',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    const CodeBox(
                        text:
                            '''POST https://auth.nasajon.com.br/auth/realms/master/protocol/openid-connect/token/introspect HTTP/1.1
          Accept: application/json
          Content-Type: application/x-www-form-urlencoded
          Authorization: Basic <base64("client_id:client_secret")>
          
          token=<access_token>&token_type_hint=access_token'''),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Espera-se deste endpoint o seguinte padrão de retorno (cortados os campos menos significativos):',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    const CodeBox(text: '''HTTP/1.1 200 OK 
          Content-Type: application/json
          
          { 
              "jti": "<String de identificação do token>", 
              "exp": <Inteiro - Timestamp em UTF indicando o momento de expiração do token>, 
              "iss": "https://auth.nasajon.com.br/auth/realms/master", 
              "client_id": "<String identificando a aplicação cliente pela qual o token foi concedido>", 
              "username": "<Conta Nasajon - E-mail>", 
              "name": "<Nome do usuário>", 
              "email": "<E-Mail do usuário (repete o username, no caso da Nasajon)>", 
              "realm_access": {
            "roles": [ 
                <Lista de roles (strings) - Ver oauth> 
            ] 
              }, 
              "resource_access": { 
            "account": { 
                "roles": [ 
                    <Lista de roles (strings) - Ver oauth> 
                  ] 
            } 
              }, 
              "scope": "<Lista de escopos, separados por espaço - ver oauth>", 
              "active": <Boolean indicando se o token ainda é valido - true ou false> 
          }'''),
                    Padding(
                      padding: NsjPadding.bottomSmall(context),
                      child: Text(
                        'Se o token não for válido, o retorno segue o seguinte padrão (note no status HTTP da resposta - diferente do endpoint anterior):',
                        style: NsjText.bodyLarge(context),
                      ),
                    ),
                    const CodeBox(text: '''HTTP/1.1 200 OK 
          Content-Type: application/json
          
          {
              "active": false, 
          }'''),
                  ],
                ),
              ),
         
            ],
          ),
        ),
      ),
    );
  }
}
