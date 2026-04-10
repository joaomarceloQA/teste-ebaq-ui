describe("Testes de Automação UI - Loja EBAC", () => {
  beforeEach(() => {
    cy.visit("http://lojaebac.ebaconline.art.br/");
  });

  it("Deve realizar o login com sucesso", () => {
    cy.get(".icon-user-unlined").click(); // Clica no ícone de usuário
    cy.get("#username").type("seu_email@teste.com");
    cy.get("#password").type("sua_senha_aqui");
    cy.get(".woocommerce-form-login__submit").click();
    cy.get(".page-title").should("contain", "Minha conta");
  });

  it("Deve adicionar um produto ao carrinho", () => {
    cy.get("#primary-menu > .menu-item-629 > a").click(); // Vai para a loja
    cy.get(".product-block").first().click(); // Clica no primeiro produto
    cy.get(".variable-items-wrapper > :nth-child(1)").click(); // Escolhe tamanho
    cy.get(".button-variable-item-Blue").click(); // Escolhe cor
    cy.get(".single_add_to_cart_button").click(); // Adiciona ao carrinho
    cy.get(".woocommerce-message").should(
      "contain",
      "adicionado no seu carrinho",
    );
  });
});
