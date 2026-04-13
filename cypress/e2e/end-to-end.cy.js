import { faker } from "@faker-js/faker";

describe("Fluxo Completo de Usuário - Hub de Leitura", () => {
  it("Deve cadastrar um usuário e realizar login em sequência (Fluxo E2E)", () => {
    const nome = faker.person.fullName();
    const email = faker.internet.email();
    const senha = faker.internet.password();

    cy.visit("http://localhost:3000/cadastro");
    cy.get("#nome").type(nome);
    cy.get("#email").type(email);
    cy.get("#senha").type(senha);
    cy.get("#btn-cadastrar").click();

    cy.get(".mensagem-sucesso").should("contain", "Cadastro realizado");

    cy.login(email, senha);

    cy.get(".perfil-usuario").should("be.visible");
    cy.get(".perfil-usuario").should("contain", nome);
  });
});
cy.get(".perfil-usuario").should("be.visible");
        cy.get(".perfil-usuario").should("contain", nome);
    }); 
}); 