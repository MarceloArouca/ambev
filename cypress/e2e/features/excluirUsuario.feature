#language: pt
Funcionalidade: : Excluir Cadastro de Usuário
  Como administrador
  Quero excluir um usuário da lista de usuários
  Para manter a base de dados atualizada

  Cenario de Fundo:
  Dado que estou na página de login
  Quando eu preencho o campo "email" com "aroucachain@teste.com"
  E eu preencho o campo "senha" com "123456"
  E eu clico no botão "Entrar"
  Entao sou redirecionado para a página inicial

  Cenario: : Excluir um usuário pelo e-mail
  Dado que acesso a página "Listar"
  Quando procuro pelo usuário com o e-mail "testenotadmin@qaexample.com"
  E clico no botão "Excluir" correspondente
  Entao o usuário "testenotadmin@qaexample.com" não está mais na lista

  Cenario: : Excluir um usuário pelo e-mail
  Dado que acesso a página "Listar"
  Quando procuro pelo usuário com o e-mail "teste@qachain.com"
  E clico no botão "Excluir" correspondente
  Entao o usuário "teste@qachain.com" não está mais na lista