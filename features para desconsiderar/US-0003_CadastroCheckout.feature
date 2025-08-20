Feature: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Scenario: Cadastro com todos os campos obrigatórios
    Given que o cliente esteja na tela de cadastro
    When preencher todos os campos obrigatórios
    And o e-mail for válido
    Then o cadastro deve ser concluído com sucesso

  Scenario: Cadastro com e-mail inválido
    Given que o cliente esteja na tela de cadastro
    When preencher todos os campos obrigatórios
    And inserir um e-mail inválido
    Then o sistema deve exibir a mensagem de erro "Formato de e-mail inválido"

  Scenario: Cadastro com campos obrigatórios vazios
    Given que o cliente esteja na tela de cadastro
    When tentar concluir o cadastro sem preencher todos os campos obrigatórios
    Then o sistema deve exibir a mensagem de alerta informando os campos em falta
