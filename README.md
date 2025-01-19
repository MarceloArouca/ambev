Cypress e2e and API Testing with Cucumber

Este projeto utiliza Cypress e Cucumber para realizar testes automatizados de e2e e em API. Ele inclui cenários para cadastrar, consultar e validar usuários em um sistema.
Pré-requisitos

Antes de começar, você precisa ter os seguintes softwares instalados em sua máquina:

    Node.js (v16 ou superior)
    Faça o download e instale o Node.js a partir do site oficial.

    ChromeDriver (se necessário)
    Certifique-se de que o ChromeDriver está instalado e acessível no seu sistema.
    Se você já possui o ChromeDriver, verifique o caminho:

    C:\Users\pc\chromeDriver

    Caso contrário, baixe o ChromeDriver compatível com sua versão do Chrome em ChromeDriver Downloads.

        Nota: No Cypress, o ChromeDriver geralmente não é necessário, pois o Cypress já inclui suporte nativo ao Chrome.

    Git
    Instale o Git para clonar o repositório.

Instalação do Projeto

Siga os passos abaixo para configurar o ambiente:

    Clone o repositório:

git clone https://github.com/MarceloArouca/ambev.git
cd ambev

Instale as dependências: Execute o comando abaixo para instalar todas as dependências necessárias:

    npm install

    (Opcional) Configure o ChromeDriver: Caso necessário, adicione o caminho do ChromeDriver ao PATH do sistema ou configure diretamente no Cypress.

Executando os Testes

    Abra o Cypress com o seguinte comando:

    npx cypress open

    No painel do Cypress:
        Navegue até a pasta cypress/e2e.
        Clique no arquivo .feature correspondente ao cenário que deseja executar.

    O Cypress abrirá o navegador e executará os testes automaticamente.

Estrutura do Projeto

    cypress/e2e/
    Contém os arquivos de testes escritos em Gherkin (.feature) e suas definições de passos (.js).

    cypress/support/
    Configurações globais e comandos personalizados para o Cypress.

    package.json
    Lista as dependências do projeto e scripts úteis.

Scripts Disponíveis

    Executar o Cypress:

npx cypress open

Executar os testes em modo headless:

npx cypress run
