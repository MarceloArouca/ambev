Feature: Cadastro de usuários como administrador

  Scenario: Preencher o formulário de cadastro de administrador com sucesso
    Given que estou na página de cadastro
    When eu preencho o campo "nome" com "Teste QA"
    And eu preencho o campo "email" com "teste@qaexample.com"
    And eu preencho o campo "senha" com "123456"
    And eu marco a opção "Cadastrar como administrador?"
    And eu clico no botão "Cadastrar"
    Then eu devo ver a mensagem de sucesso "Cadastro realizado com sucesso!"

