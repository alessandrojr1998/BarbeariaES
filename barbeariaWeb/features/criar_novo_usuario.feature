Feature: Criar um novo usuario
  Como usuario, quero criar uma conta no sistema

  Scenario: Criar uma conta de usuario
    Given Estou na pagina de novo usuario
    When Eu crio uma conta com nome 'Joao', sobrenome 'Fonseca', cpf '7588955542', senha '10235554' e contato '81953264253'
    And Clico em criar usuario
    Then Eu vejo uma tela com a mensagem de sucesso e meus dados de novo usuario.

  Scenario: Criar uma conta de usuario com nome em branco
    Given Estou na pagina de novo usuario
    When Eu crio uma conta com nome vazio, sobrenome 'Fonseca', cpf '7588955542', senha '10235554' e contato '81953264253'
    And Clico em criar usuario
    Then Eu vejo que o usuario não foi criado, pois o nome nao foi preenchido.