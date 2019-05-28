Feature: Criar um novo usuario
  Como usuario, quero criar uma conta no sistema

  Scenario: Criar uma conta de usuario
    Given Estou na pagina de novo usuario
    When Eu crio uma conta com 'nome','sobrenome','cpf','senha' e 'contato'
    And Clico em criar usuario
    Then Eu vejo uma tela com a mensagem de sucesso e meus dados de novo cliente.