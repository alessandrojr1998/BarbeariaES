Feature: Gerenciar um produto
  Como usuario, quero gerenciar os produtos

  Scenario: Criar um produto
    Given Estou na pagina de novo produto
    When Eu crio um produto com nome 'Gel', descricao 'Gel para alisar o cabelo', valor '5,00', quantidade '10', barbearia '1'
    Then Eu vejo uma tela com a mensagem de sucesso e os dados do produto.

  Scenario: Criar um produto com o nome em branco
    Given Estou na pagina de novo produto
    When Eu crio um produto com nome '', descricao 'Shampoo para cabelos lisos', valor '45,00', quantidade '29', barbearia '1'
    Then Eu vejo que houve um erro na criacao do 'produto'

  Scenario: Criar um produto com a descricao em branco
    Given Estou na pagina de novo produto
    When Eu crio um produto com nome 'Secador de cabelo', descricao '', valor '115,00', quantidade '10', barbearia '1'
    Then Eu vejo que houve um erro na criacao do 'produto'

  Scenario: Criar um produto com o valor em branco
    Given Estou na pagina de novo produto
    When Eu crio um produto com nome 'Prancha de alisamento', descricao 'Chapinha para alisamento do cabelo', valor '', quantidade '5', barbearia '1'
    Then Eu vejo que houve um erro na criacao do 'produto'

  Scenario: Remover um produto
    Given Estou na pagina de visualizacao do produto de nome 'Pente fino', descricao 'Pente para pentear cabelos lisos', valor '10,00', quantidade '8' e barbearia '1'
    When Eu deleto o 'produto'
    Then Eu vejo uma mensagem de sucesso na remocao do 'Produto'
