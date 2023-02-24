# 📝 Site de documenntação de apis ``erp4-api-docs``

Este projeto tem como objetivo a centralização das documentações das mais variadas ``APIs`` que a Nasajon ofereçe e virá a oferecer como produto. Nele foi desenvolvido um índice interativo através da MOPE onde, ao clicar em um determinado processo o usuário é direcionado à sua pagina de detalhes, onde estarão listadas suas atividades e recursos assim como suas respesctivas documentações. Neste documento, será exposta uma breve introdução sobre as telas da aplicação e uma descrição de como contribuir com as documentações de ``APIs``.

&nbsp;

## 📲 Telas da aplicação

Esta aplicação é composta de três telas principais uma sedo acessada a partir da outra. São elas:

&nbsp;

- <strong>``Mope Page``</strong> : Esta tela é a home page da aplicação, nela são exibidas duas seções com uma breve explicação do ERP Nasajon e de como a MOPE foi criada e como ela se integra ao ERP 4.0, assim como a forma de navegar pelo índice que virá logo abaixo. Logo após temos  a MOPE que é usada como um índice onde, quando clicado em algum processo, o usuário é direcionado à sua página de detalhes. 


- <strong>``Mope Process Page``</strong> : Nesta tela são apresentados os detalhes correspondentes ao processo selecionado na página anterior. Nela é possível vizualizar uma descrição do processo e sua lista de ``atividades`` e ``recursos``.


    - ``Atividades`` : Listagem referente às atividades que compõem detrminado processo. Em cada item da lista é possível acessar uma breve descrição da atividade, caso houver, clicando no ícone de mais informações localizado ao lado do título da atividade.

    
    - ``Recursos`` : Listagem referente aos recursos que compõem determinada atividade. Cada atividade terá ao menos um recurso. Ao clicar no título do recurso o usuário é direcionado à uma pagina de documentação das ``APIs`` referentes ao recurso selecionado. 

    De forma hierárquica vemos esses elementos da seguinte forma:
        
    - ``Processo ->`` 253 Gestão dos clientes
        - ``Atividade ->`` 253.1 Garantir a retenção e fidelidade dos clientes
            - ``Recurso ->`` Cliente

&nbsp;         

- <strong>``Api Documentation WebView``</strong> : Após clicar em uma das atividades ou recursos na tela anterior o usuário é direcinado para esta onde é possível ver a ``API`` documentada no padrão ```OpenApi```. Por se tratar de uma web view esta página exibe a documentação em ``html`` hospedada em outra localização.

&nbsp;

## 📚 Como contribuir com as documentações

Para contribuir com esta aplicação é necessário que a documentação de determinado recurso tenha sido desenvolvida em um ``Json`` no padrão ``Open Api`` e inserida em uma das aplicações responsáveis por gerar o ``html`` tal como a ``Dados Mestre``. O processo de geração do ``html`` é automático e será especificado em outro documento. Após feito o passo anterior, para que a documentação seja eibida a partir desta aplicação precisamos seguir os seguintes passos:

&nbsp;

- <strong>``Primeiro passo``</strong>: Localizar o arquivo ``Json`` de contrução da MOPE nesta aplicação : Na raiz deste projeto podemos localizar um diretório chamado ``Json`` contido em ``assets`` e dentro dele um aquivo chamado ``mope_constructor.json``. Este arquivo é responsável pela construção da mope e de suas páginas de detalhes.

- <strong>``Segundo passo``</strong>: Dentro do arquivo ``mope_constructor.json`` localizar o nome da atividade desejada. Recomenda-se o uso do ``CTRL+F`` para facilitar a procura.

- <strong>``Terceiro passo``</strong>: Inserir a lista de recursos dentro da chave ``"activity_resources"`` como no exemplo: 

```
{

...

    {
        "process_code": "253"
        "process_title": "Gestão dos clientes",
     
        "process_description": "O objetivo deste processo é gerir a relação entre o cliente e a empresa.   Este processo pode ser desencadeado nos primeiros estágios do ciclo de vida do cliente (p.ex, para ligações em que se percebeu que pode ser um cliente potencial) até o término do relacionamento entre a empresa e o cliente. Este processo garante que cada cliente recebe uma identidade única e que as identidades dos clientes não são duplicadas na empresa; Avaliar o valor do cliente, o risco do cliente (risco de crédito, risco de fraude, risco de influência e risco de Rotatividade ) e valida a satisfação do cliente. Os dados do cliente também são gerenciados neste processo.  As seguintes atividades e subprocessos estão relacionadas:",
                     
        "process_activities": [
            {
                "activity_code": "1"
                "activity_title": "Garantir a retenção e fidelidade de clientes",
                "activity_resources": [
                    {   
                        "file_name": "clientes"
                        "resource_title": "Cliente",
                        "resource_documentation_url": ""
                    }
                ],
    ...
    
    }
...

}
```
>Nota: A chave ``file_name`` é referente ao nome do arquivo ``.html`` que sera gerado, logo seu valor deve ser exatamente o mesmo nome do arquivo ``.json`` inserido no ``Dados Mestre`` ou em outra aplicação que realie o build automático. Também é necessário que seu nome seja todo em letras minúsculas separadas por ``_`` caso o nome possua mais de uma palavra.

>Nota: A ``url`` da documentação também é gerada de forma automática não sendo necessário coloca-lá na chave ``resource_documentation_url``. Caso o ``html`` tenha sido gerado e hospedado de outra forma é possível especificar a url dentro desta chave. É importante salientar que este caso deve ser evitado e utilizado apenas em última instância.