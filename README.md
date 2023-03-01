# 📝 Site de documenntação de apis ``erp4-api-docs``

Este projeto tem como objetivo a centralização das documentações das mais variadas ``APIs`` que a Nasajon ofereçe e virá a oferecer como produto. Nele foi desenvolvido um índice interativo através da MOPE onde, ao clicar em um determinado processo o usuário é direcionado à sua pagina de detalhes, onde estarão listadas suas atividades e recursos assim como suas respesctivas documentações. Neste documento, será exposta uma breve introdução sobre as telas da aplicação e uma descrição de como contribuir com as documentações de ``APIs``.


&nbsp;

## 📲 Telas da aplicação

Esta aplicação é composta de três telas principais uma sedo acessada a partir da outra. São elas:

&nbsp;

- <strong>Mope Page</strong> : Esta tela é a home page da aplicação, nela são exibidas duas seções com uma breve explicação do ERP Nasajon e de como a MOPE foi criada e como ela se integra ao ERP 4.0, assim como a forma de navegar pelo índice que virá logo abaixo. Logo após temos  a MOPE que é usada como um índice onde, quando clicado em algum processo, o usuário é direcionado à sua página de detalhes. 


- <strong>Mope Process Page</strong> : Nesta tela são apresentados os detalhes correspondentes ao processo selecionado na página anterior. Nela é possível vizualizar uma descrição do processo e sua lista de <strong>```atividades```</strong> e <strong>```recursos```</strong>.


    - ``Atividades`` : Listagem referente às atividades que compõem detrminado processo. Em cada item da lista é possível acessar uma breve descrição da atividade, caso houver, clicando no ícone de mais informações localizado ao lado do título da atividade. Ao clicar no título o usuário é direcionado à pagina de documentação da atividade selecionada.

    
    - ``Recursos`` : Listagem referente aos recursos que compõem detrminada atividade. Cada atividade terá ao menos um recurso. Ao clicar no título do recurso o usuário também é direcionado à uma pagina de documentação porem referente ao recurso selecionado. 

    De forma hierárquica vemos esses elementos da seguinnte forma:
 
       Processo -> 253 Gestão dos clientes
         Atividade -> 253.1 Garantir a retenção e fidelidade dos clientes -> Atividade 
             Recurso -> Clientes

- <strong>Api Documentation WebView</strong> : Após clicar em uma das atividades ou recursos na tela anterior o usuário é direcinado para esta onde é possível ver a ``API`` documentada no padrão ```OpenApi```. Por se tratar de uma web view esta página exibe a documentação em ``html`` hospedada em outra localização.

&nbsp;

## 📚 Como contribuir com as documentações

Para contribuir com esta aplicação é necessário que a documentação de determinada atividade ou recurso tenha sido desenvolvida em um ``Json`` no padrão ``Open Api`` e hospedada em um bucket no google cloud. O processo de geração do ``html`` é automático e será especificado em outro documento. Após feito o passo anterior, para que a documentação seja eibida a partir desta aplicação precisamos seguir os seguintes passos:

&nbsp;

- Primeiro passo - Localizar o arquivo ``Json`` de contrução da MOPE nesta aplicação : Na raiz deste projeto podemos localizar um diretório chamado ``Json`` e dentro dele um aquivo chamado ``mope_constructor.json`` . Este arquivo é responsável pela construção da mope e de suas páginas de detalhes.

- Segundo passo - Dentro do arquivo ``mope_constructor.json`` localizar o nome da atividade ou recurso desejado. Recomenda-se o uso do ``CTRL+F`` para facilitar a procura.

- Terceiro Passo - Inserir a ``url`` da documetação no valor da chave ``activity_documentation_url`` , para as documentações referentes à atividades, ou em ``resource_documentation_url`` para as dcumentações referentes à recursos.

&nbsp;

Segue um eemplo de um processo que possui documentações tanto para uma atividade, quanto para um recurso:

&nbsp;

```
{

...

    {
        "process_title": "253 Gestão dos clientes",
     
        "process_description": "O objetivo deste processo é gerir a relação entre o cliente e a empresa.   Este processo pode ser desencadeado nos primeiros estágios do ciclo de vida do cliente (p.ex, para ligações em que se percebeu que pode ser um cliente potencial) até o término do relacionamento entre a empresa e o cliente. Este processo garante que cada cliente recebe uma identidade única e que as identidades dos clientes não são duplicadas na empresa; Avaliar o valor do cliente, o risco do cliente (risco de crédito, risco de fraude, risco de influência e risco de Rotatividade ) e valida a satisfação do cliente. Os dados do cliente também são gerenciados neste processo.  As seguintes atividades e subprocessos estão relacionadas:",
                     
        "process_activities": [
            {
                "activity_title": "253.1 Garantir a retenção e fidelidade de clientes",
                "activity_documentation_url": "https://storage.googleapis.com/api-docs-dev/253/2531/clientes.html",
                "activity_resources": [
                    {
                        "resource_title": "Clientes",
                        "resource_documentation_url": "https://storage.googleapis.com/api-docs-dev/253/2531/clientes.html"
                    }
                ],
    ...
    
    }
...

}
```