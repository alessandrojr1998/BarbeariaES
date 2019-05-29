Feature: Gerenciar um endereco
  Como administrador, quero gerenciar um endereco

  Scenario: Criar um endereco
    Given Estou na pagina de novo endereco
    When Eu crio um endereco com a rua 'Joao Sampaio', bairro 'Bela Vista', numero '85'
    And Clico em criar endereco
    Then Eu vejo uma tela com a mensagem de sucesso e os dados do endereco.

  Scenario: Criar um endereco com a rua em branco
    Given Estou na pagina de novo endereco
    When Eu crio um endereco com a rua em branco, bairro 'Bela Vista', numero '85'
    And Clico em criar endereco
    Then Eu vejo que o endereco nao foi criado, pois a rua nao foi preenchida.

  Scenario: Criar um endereco com o bairro em branco
    Given Estou na pagina de novo endereco
    When Eu crio um endereco com a rua 'Joao Sampaio', bairro em branco, numero '85'
    And Clico em criar endereco
    Then Eu vejo que o endereco nao foi criado, pois o bairro nao foi preenchido.

  Scenario: Criar um endereco com o numero em branco
    Given Estou na pagina de novo endereco
    When Eu crio um endereco com a rua 'Joao Sampaio', bairro 'Bela Vista', numero em branco
    And Clico em criar endereco
    Then Eu vejo que o endereco nao foi criado, pois o numero nao foi preenchido.

  Scenario: Remover um endereco
    Given Estou na pagina de visualizacao do endereco de rua 'Jose Marques', bairro 'Magano', numero '93'
    When Eu deleto o endereco
    Then Eu vejo uma mensagem de sucesso na remocao