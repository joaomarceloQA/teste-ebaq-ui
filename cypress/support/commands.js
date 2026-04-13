Cypress.Commands.add("login", (email, senha) => {
  cy.visit("http://localhost:3000/login");
  cy.get("#login-email").type(email);
  cy.get("#login-senha").type(senha);
  cy.get("#btn-login").click();
});
