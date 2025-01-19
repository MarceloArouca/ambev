import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';

Given('que estou na página de cadastro', () => {
    cy.visit('https://front.serverest.dev/cadastrarusuarios');
});

When('eu preencho o campo {string} com {string}', (campo, valor) => {
    const campos = {
        nome: 'input[placeholder="Digite seu nome"]',
        email: 'input[placeholder="Digite seu email"]',
        senha: 'input[placeholder="Digite sua senha"]',
    };

    cy.get(campos[campo]).type(valor);
});

When('eu marco a opção {string}', (opcao) => {
    cy.get('input[type="checkbox"]').check();
});

When('eu clico no botão {string}', (botao) => {
    cy.contains('button', botao).click();
});

Then('eu devo ver a mensagem de sucesso {string}', (mensagem) => {
    cy.contains(mensagem).should('be.visible');
});
