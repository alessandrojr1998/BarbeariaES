Feature: Gerenciar um usuario
  Como usuario, quero gerenciar uma conta no sistema

  Scenario: Criar uma conta de usuario
    Given Estou na pagina de novo usuario
    When Eu crio uma conta com nome 'Joao', sobrenome 'Fonseca', cpf '75889555421', senha '10235554' e contato '81953264253'
    Then Eu vejo uma tela com a mensagem de sucesso na criacao

  Scenario: Criar uma conta de usuario sem contato
    Given Estou na pagina de novo usuario
    When Eu crio uma conta com nome 'Joao', sobrenome 'Fonseca', cpf '75889555421', senha '10235554' e contato ''
    Then Eu vejo que houve um erro na criacao

  Scenario: Criar uma conta de usuario com nome em branco
    Given Estou na pagina de novo usuario
    When Eu crio uma conta com nome '', sobrenome 'Fonseca', cpf '75889555421', senha '10235554' e contato '81953264253'
    Then Eu vejo que houve um erro na criacao

  Scenario: Criar uma conta de usuario com cpf menor que 11 caracteres
    Given Estou na pagina de novo usuario
    When Eu crio uma conta com nome 'Jose', sobrenome 'Barbosa', cpf '7', senha '10235554' e contato '81953264253'
    Then Eu vejo que houve um erro na criacao

  Scenario: Criar uma conta de usuario com a senha em branco
    Given Estou na pagina de novo usuario
    When Eu crio uma conta com nome 'Jose', sobrenome 'Barbosa', cpf '70254125412', senha '' e contato '81953264253'
    Then Eu vejo que houve um erro na criacao

