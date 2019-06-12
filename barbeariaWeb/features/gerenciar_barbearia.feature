Feature: Gerenciar uma barbearia
  Como usuario, quero gerenciar uma barbearia

  Scenario: Criar uma barbearia
    Given Estou na pagina de nova barbearia
    When Eu crio uma barbearia com nome 'Barberia do Jose', contato '81953426152', usuario '1' e endereco '1'
    Then Eu vejo uma tela com a mensagem de sucesso e os dados da barbearia.

  Scenario: Criar uma barbearia com nome em branco
    Given Estou na pagina de nova barbearia
    When Eu crio uma barbearia com nome '', contato '81953426152', usuario '1' e endereco '1'
    Then Eu vejo que houve um erro na criacao do 'barbearia'

  Scenario: Criar uma barbearia com contato em branco
    Given Estou na pagina de nova barbearia
    When Eu crio uma barbearia com nome 'Joca Juqueira', contato '', usuario '1' e endereco '1'
    Then Eu vejo que houve um erro na criacao do 'barbearia'

  Scenario: Criar uma barbearia com usuario em branco
    Given Estou na pagina de nova barbearia
    When Eu crio uma barbearia com nome 'Jeca Tatu', contato '87956241258', usuario '' e endereco '1'
    Then Eu vejo que houve um erro na criacao do 'barbearia'

  Scenario: Criar uma barbearia com endereco em branco
    Given Estou na pagina de nova barbearia
    When Eu crio uma barbearia com nome 'Dalila Dav', contato '87981523569', usuario '1' e endereco ''
    Then Eu vejo que houve um erro na criacao do 'barbearia'
