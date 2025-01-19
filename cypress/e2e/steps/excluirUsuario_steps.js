import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';

let emailUsuario

Given("que estou na página de login", () => {
    cy.visit("https://front.serverest.dev/login");
});

Then("sou redirecionado para a página inicial", () => {
    cy.url().should("include", "https://front.serverest.dev/admin/home");
});

Given("que acesso a página {string}", (pagina) => {
    cy.contains(pagina).click();
});

When("procuro pelo usuário com o e-mail {string}", (email) => {
    emailUsuario = email;
    cy.get("table").contains("td", email).should("be.visible");
});

When("clico no botão {string} correspondente", (acao) => {
    cy.get("table").contains("td", emailUsuario)
        .parent("tr")
        .find("button")
        .contains(acao)
        .click();
});

Then("o usuário {string} não está mais na lista", (email) => {
    cy.get("table").contains("td", email).should("not.exist");
});
