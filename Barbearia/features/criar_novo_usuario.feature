Feature: Criar um novo usuario
  Como cliente, quero me cadastrar como usuario no sistema

  Scenario: Quero me cadastrar como usuario
    Given Estou na pagina de novo usuario
    When Eu crio um usuario com 'nome', 'sobrenome', 'cpf', 'contato', 'idade'
    And Clico em criar usuario
    Then Eu vejo uma mensagem de sucesso e os dados de novo usuario
