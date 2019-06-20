Feature: Gerenciar um endereco
  Como administrador, quero gerenciar um endereco

  Scenario: Criar um endereco
    Given Estou na pagina de criar um novo endereco
    When Eu crio um endereco com a rua 'Joao Sampaio', bairro 'Bela Vista', numero '85'
    Then Eu vejo uma tela com a mensagem de sucesso na criacao

  Scenario: Criar um endereco com a rua em branco
    Given Estou na pagina de criar um novo endereco
    When Eu crio um endereco com a rua '', bairro 'Bela Vista', numero '85'
    Then Eu vejo que houve um erro na criacao

  Scenario: Criar um endereco com o bairro em branco
    Given Estou na pagina de criar um novo endereco
    When Eu crio um endereco com a rua 'Joao Sampaio', bairro '', numero '85'
    Then Eu vejo que houve um erro na criacao

  Scenario: Criar um endereco com o numero em branco
    Given Estou na pagina de criar um novo endereco
    When Eu crio um endereco com a rua 'Joao Sampaio', bairro 'Bela Vista', numero ''
    Then Eu vejo que houve um erro na criacao

  Scenario: Remover um endereco
    Given Estou na pagina de visualizacao do endereco de rua 'Jose Marques', bairro 'Magano', numero '93', barbearia '1'
    When Eu efetuo a remocao
    Then Eu vejo uma mensagem de sucesso na remocao