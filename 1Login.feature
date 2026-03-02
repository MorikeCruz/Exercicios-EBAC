# language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer login na plataforma
  Para visualizar meus pedidos

  Cenário: Login com dados válidos
    Dado que estou na tela de login
    Quando eu inserir usuário e senha válidos
    E clicar no botão "Entrar"
    Então devo ser direcionado para a tela de checkout

  Esquema do Cenário: Login com dados inválidos
    Dado que estou na tela de login
    Quando eu inserir o usuário "<usuario>" e a senha "<senha>"
    E clicar no botão "Entrar"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | usuario         | senha         | mensagem                       |
      | Marcos123456    |Mar123456      | Usuário ou senha inválidos     |
      | usuario_valido  | senha_errada  | Usuário ou senha inválidos     |
      |                 | 123456        | Usuário ou senha inválidos     |
      | usuario@teste   |               | Usuário ou senha inválidos     |
      |                 |               | Usuário ou senha inválidos     |
