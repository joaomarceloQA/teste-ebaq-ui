Feature: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero realizar login
  Para visualizar meus pedidos

  Scenario: Login com credenciais válidas
    Given que o cliente esteja na tela de login
    When inserir usuário e senha válidos
    Then deve ser direcionado para a tela de checkout

  Scenario: Login com credenciais inválidas
    Given que o cliente esteja na tela de login
    When inserir usuário ou senha inválidos
    Then deve ser exibida a mensagem "Usuário ou senha inválidos"
