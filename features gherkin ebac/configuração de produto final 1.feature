Funcionalidade: Configuração de produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com tamanho, cor e quantidade
  Para depois inserir no carrinho

  Cenário: Selecionar cor, tamanho e quantidade válidos
    Dado que o cliente esteja na página do produto
    Quando selecionar a cor, o tamanho e a quantidade
    E a quantidade for menor ou igual a 10
    Então o botão "Adicionar ao carrinho" deve ser habilitado
    E o produto deve ser adicionado ao carrinho

  Cenário: Quantidade acima do limite permitido
    Dado que o cliente esteja na página do produto
    Quando selecionar a quantidade maior que 10
    Então o sistema deve exibir uma mensagem de alerta
    E não deve permitir adicionar ao carrinho

  Cenário: Clicar no botão limpar
    Dado que o cliente preencheu cor, tamanho e quantidade
    Quando clicar no botão "Limpar"
    Então todos os campos devem retornar ao estado inicial

  Esquema do Cenário: Configuração de produto com diferentes quantidades
    Dado que o cliente esteja na página do produto
    Quando selecionar a cor "<cor>", o tamanho "<tamanho>" e a quantidade "<quantidade>"
    Então o sistema deve apresentar o resultado "<mensagem>"

    Exemplos:
      | cor     | tamanho | quantidade | mensagem                           |
      | Azul    | M       | 2          | Produto adicionado ao carrinho     |
      | Preto   | G       | 10         | Produto adicionado ao carrinho     |
      | Vermelho| P       | 11         | Quantidade acima do limite permitido |