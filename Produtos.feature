#language: pt

Funcionalidade: Configuração de produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
  Para depois inserir no carrinho

  Cenário: Seleções obrigatórias de cor, tamanho e quantidade
    Dado que estou na página do produto
    Quando eu tentar adicionar o produto ao carrinho sem selecionar cor, tamanho ou quantidade
    Então o sistema deve exibir mensagem informando que os campos são obrigatórios

  Cenário: Limite máximo de produtos por venda
    Dado que estou na página do produto
    Quando eu selecionar uma quantidade maior que 10
    Então o sistema não deve permitir a inclusão
    E deve exibir mensagem informando limite máximo de 10 produtos por venda

  Cenário: Limpar configurações selecionadas
    Dado que selecionei cor, tamanho e quantidade
    Quando eu clicar no botão "Limpar"
    Então o sistema deve retornar o produto ao estado original
    E os campos devem ficar sem seleção
