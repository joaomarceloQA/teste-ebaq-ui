Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero realizar login
  Para visualizar meus pedidos

  Cenário: Login com credenciais válidas
    Dado que o cliente esteja na tela de login
    Quando inserir usuário e senha válidos
    Então deve ser direcionado para a tela de checkout

  Cenário: Login com credenciais inválidas
    Dado que o cliente esteja na tela de login
    Quando inserir usuário ou senha inválidos
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"

  Esquema do Cenário: Tentativa de login com diferentes credenciais
    Dado que o cliente esteja na tela de login
    Quando inserir o usuário "<usuario>" e a senha "<senha>"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | usuario          | senha     | mensagem                        |
      | joao@teste.com   | 123456    | Login realizado com sucesso      |
      | maria@teste.com  | 000000    | Usuário ou senha inválidos       |
      | jose@teste.com   | abc123    | Usuário ou senha inválidos       |