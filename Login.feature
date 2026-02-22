language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer login na plataforma
  Para visualizar meus pedidos

  Cenário: Login com dados válidos
    Dado que estou na tela de login
    Quando eu inserir usuário e senha válidos
    E clicar no botão "Entrar"
    Então devo ser direcionado para a tela de checkout

  Cenário: Login com dados inválidos
    Dado que estou na tela de login
    Quando eu inserir usuário ou senha inválidos
    E clicar no botão "Entrar"
    Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"
