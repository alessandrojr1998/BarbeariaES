Feature: Gerenciar uma barbearia
  Como usuario, quero gerenciar uma barbearia

  Scenario: Criar uma barbearia
    Given Estou na pagina de nova barbearia
    When Eu crio uma barbearia com nome 'Barberia do Jose', contato '81953426152', usuario '1' e endereco '1'
    And Clico em criar barbearia
    Then Eu vejo uma tela com a mensagem de sucesso e os dados da barbearia.

  Scenario: Criar uma barbearia com nome em branco
    Given Estou na pagina de nova barbearia
    When Eu crio uma barbearia com nome em branco, contato '81953426152', usuario '1' e endereco '1'
    And Clico em criar barbearia
    Then Eu vejo que a barberia nao foi criada, pois o nome nao foi preenchido.