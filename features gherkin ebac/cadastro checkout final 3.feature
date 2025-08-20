Funcionalidade: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Cenário: Cadastro com todos os campos obrigatórios
    Dado que o cliente esteja na tela de cadastro
    Quando preencher todos os campos obrigatórios
    E o e-mail for válido
    Então o cadastro deve ser concluído com sucesso

  Cenário: Cadastro com e-mail inválido
    Dado que o cliente esteja na tela de cadastro
    Quando preencher todos os campos obrigatórios
    E inserir um e-mail inválido
    Então o sistema deve exibir a mensagem de erro "Formato de e-mail inválido"

  Cenário: Cadastro com campos obrigatórios vazios
    Dado que o cliente esteja na tela de cadastro
    Quando tentar concluir o cadastro sem preencher todos os campos obrigatórios
    Então o sistema deve exibir a mensagem de alerta informando os campos em falta

  Esquema do Cenário: Cadastro de cliente com diferentes dados
    Dado que o cliente esteja na tela de cadastro
    Quando preencher os campos obrigatórios com o nome "<nome>", o e-mail "<email>" e a senha "<senha>"
    Então o sistema deve apresentar a mensagem "<mensagem>"

    Exemplos:
      | nome        | email             | senha   | mensagem                          |
      | João Silva  | joao@teste.com    | 123456  | Cadastro concluído com sucesso    |
      | Maria Souza | maria@teste.com   | 000000  | Cadastro concluído com sucesso    |
      | José Lima   | jose.teste.com    | abc123  | Formato de e-mail inválido        |
      | Ana Costa   |                   | 123456  | Campos obrigatórios não preenchidos |