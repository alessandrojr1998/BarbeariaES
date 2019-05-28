Feature: Criar um novo endereco
  Como administrador, quero criar um novo endereco

  Scenario: Criar um endereco
    Given Estou na pagina de novo endereco
    When Eu crio um endereco com 'rua','bairro' e 'numero'
    And Clico em criar endereco
    Then Eu vejo uma tela com a mensagem de sucesso e os dados do endereco.