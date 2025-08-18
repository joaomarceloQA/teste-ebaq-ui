Feature: Configuração de produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com tamanho, cor e quantidade
  Para depois inserir no carrinho

  Scenario: Selecionar cor, tamanho e quantidade válidos
    Given que o cliente esteja na página do produto
    When selecionar a cor, o tamanho e a quantidade
    And a quantidade for menor ou igual a 10
    Then o botão "Adicionar ao carrinho" deve ser habilitado
    And o produto deve ser adicionado ao carrinho

  Scenario: Quantidade acima do limite permitido
    Given que o cliente esteja na página do produto
    When selecionar a quantidade maior que 10
    Then o sistema deve exibir uma mensagem de alerta
    And não deve permitir adicionar ao carrinho

  Scenario: Clicar no botão limpar
    Given que o cliente preencheu cor, tamanho e quantidade
    When clicar no botão "Limpar"
    Then todos os campos devem retornar ao estado inicial
