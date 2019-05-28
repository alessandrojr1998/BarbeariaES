Feature: Criar um novo endereco
  Como administrador, quero criar um novo endereco

  Scenario: Criar um endereco
    Given Estou na pagina de novo endereco
    When Eu crio um endereco com a rua 'Joao Sampaio', bairro 'Bela Vista', numero '85'
    And Clico em criar endereco
    Then Eu vejo uma tela com a mensagem de sucesso e os dados do endereco.