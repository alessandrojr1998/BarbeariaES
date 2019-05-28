Feature: Criar uma nova barbearia
  Como usuario, quero criar uma nova barbearia

  Scenario: Criar uma barbearia
    Given Estou na pagina de nova barbearia
    When Eu crio uma barbearia com 'nome','contato', 'usuario' e 'endereco'
    And Clico em criar barbearia
    Then Eu vejo uma tela com a mensagem de sucesso e os dados da barbearia.