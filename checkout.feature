#language: pt

Funcionalidade: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Cenário: Cadastro com todos os campos obrigatórios preenchidos
    Dado que estou na tela de cadastro
    Quando eu preencher todos os campos obrigatórios marcados com asterisco
    E clicar em "Finalizar Cadastro"
    Então o sistema deve concluir o cadastro com sucesso

  Cenário: Validação de e-mail inválido
    Dado que estou na tela de cadastro
    Quando eu inserir um e-mail com formato inválido
    E clicar em "Finalizar Cadastro"
    Então o sistema deve exibir mensagem de erro para e-mail inválido

  Cenário: Tentativa de cadastro com campos vazios
    Dado que estou na tela de cadastro
    Quando eu tentar finalizar o cadastro com campos obrigatórios vazios
    Então o sistema deve exibir mensagem de alerta informando campos obrigatórios
