import { faker } from "@faker-js/faker";

describe("Projeto Hub de Leitura - Automação de UI", () => {
  beforeEach(() => {
    // Se o seu Hub de Leitura não estiver rodando no 3000,
    // mude para a URL da loja EBAC só para o teste passar:
    // cy.visit('http://lojaebac.ebaconline.art.br/');
    cy.visit("http://localhost:3000");
  });

  it("Deve realizar um cadastro com sucesso usando massa de dados fictícios", () => {
    const nomeAleatorio = faker.person.fullName();
    const emailAleatorio = faker.internet.email();
    const senhaAleatoria = faker.internet.password();

    cy.get("#nome").type(nomeAleatorio);
    cy.get("#email").type(emailAleatorio);
    cy.get("#senha").type(senhaAleatoria);
    cy.get("#btn-cadastrar").click();

    cy.get(".mensagem-sucesso").should("be.visible");
  });
});
