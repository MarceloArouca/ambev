import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'
const baseUrl = "https://serverest.dev/";
let userId

Given("que eu tenho a API disponivel", () => {
    cy.log("API está disponível");
});

When(
    "eu envio uma requisicao POST para o {string} com os dados:",
    (endpoint, dataTable) => {
        const rows = dataTable.raw();
        const headers = rows[0];
        const values = rows[1];

        const data = headers.reduce((acc, header, index) => {
            acc[header] = values[index];
            return acc;
        }, {});

        cy.request({
            method: "POST",
            url: `${baseUrl}${endpoint}`,
            body: data,
            headers: {
                "Content-Type": "application/json",
            },
        }).then((response) => {
            // Envolve a resposta para uso nos próximos steps
           Cypress.env("response", response)
        });
    }
);

Then("a resposta deve ter o status {int}", (statusCode) => {
    const response = Cypress.env("response");
    expect(response.status).to.eq(statusCode);
});

Then("o corpo da resposta deve conter {string}", (key) => {
    const response = Cypress.env("response");
    expect(response.body).to.have.property(key);
});

Then("o valor da {string} deve ser {string}", (key, value) => {
    const response = Cypress.env("response");
    expect(response.body[key]).to.eq(value);
    userId = response.body["_id"].value;
});