#language: pt

Funcionalidade: Testar a API de usuários SERVEREST

  Esquema do Cenario: Cadastrar um novo usuario
    Dado que eu tenho a API disponivel
    Quando eu envio uma requisicao POST para o "usuarios" com os dados:
      | nome   | email   | password   | administrador    |
      | <nome> | <email> | <password> | <administrador> |
    Entao a resposta deve ter o status 201
    E o corpo da resposta deve conter "message"
    E o valor da "message" deve ser "Cadastro realizado com sucesso"

    Exemplos:
      | nome              | email              | password | administrador |
      | Arnaldo Tester QA | artestaq@teste.com | 123456   | true          |

    Cenario: Consultar usuario por ID
      Dado que queira realizar uma consulta pelos IDs dos "usuarios" criado no cenario anterior
      Entao a resposta deve ter o status 200
      E o corpo da resposta deve conter "nome"
      E o valor da "nome" deve ser "Arnaldo Tester QA"

