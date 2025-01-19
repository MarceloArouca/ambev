#language: pt
Funcionalidade: : Cadastro de usuários

  Cenario: : Preencher o formulário de cadastro de administrador com sucesso
    Dado que estou na página de cadastro
    Quando eu preencho o campo "nome" com "Teste QA"
    E eu preencho o campo "email" com "teste@qachain.com"
    E eu preencho o campo "senha" com "123456"
    E eu marco a opção "Cadastrar como administrador?"
    E eu clico no botão "Cadastrar"
    Entao eu devo ver a mensagem de sucesso "Cadastro realizado com sucesso"

  Cenario: Preencher o formulário de cadastro com sucesso
    Dado que estou na página de cadastro
    Quando eu preencho o campo "nome" com "Teste QA NOT Admin"
    E eu preencho o campo "email" com "testenotadmin@qaexample.com"
    E eu preencho o campo "senha" com "123456"
    E eu clico no botão "Cadastrar"
    Entao eu devo ver a mensagem de sucesso "Cadastro realizado com sucesso"