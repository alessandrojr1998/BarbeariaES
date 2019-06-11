Given("Estou na pagina de novo usuario") do
  visit '/usuarios/new'
  expect(page).to have_current_path('/usuarios/new')
end

When("Eu crio uma conta com nome {string}, sobrenome {string}, cpf {string}, senha {string} e contato {string}") do |nome, sobrenome, cpf, senha, contato|
  fill_in 'usuario[nome]', :with => nome
  fill_in 'usuario[sobrenome]', :with => sobrenome
  fill_in 'usuario[cpf]', :with => cpf
  fill_in 'usuario[senha]', :with => senha
  fill_in 'usuario[contato]', :with => contato
  click_button 'Create Usuario'
end

Then("Eu vejo uma tela com a mensagem de sucesso e meus dados de novo usuario.") do
  page.has_content?('Usuario was successfully created.')
end

#Endereco

Given("Estou na pagina de novo endereco") do
  visit '/enderecos/new'
  expect(page).to have_current_path('/enderecos/new')
end

When("Eu crio um endereco com a rua {string}, bairro {string}, numero {string}")  do |rua, bairro, numero|
  fill_in 'endereco[rua]', :with => rua
  fill_in 'endereco[bairro]', :with => bairro
  fill_in 'endereco[numero]', :with => numero
  click_button 'Create Endereco'
end

Then("Eu vejo uma tela com a mensagem de sucesso e os dados do endereco") do
  page.has_content?('Endereco was successfully created.')
end

Then("Eu vejo que houve um erro na criacao do {string}") do |string|
  page.has_content?('1 error prohibited this '+ string + ' from being saved:')
end

Given("Estou na pagina de visualizacao do endereco de rua {string}, bairro {string}, numero {string}, barbearia {string}") do |rua, bairro, numero, barbearium_id|
  visit 'enderecos/new'
  fill_in 'endereco[rua]', :with => rua
  fill_in 'endereco[bairro]', :with => bairro
  fill_in 'endereco[numero]', :with => numero
  fill_in 'endereco[barbearium_id]', :with => barbearium_id
  click_button 'Create Endereco'
end

When("Eu deleto o {string}") do |string|
  click_link 'Destroy'
end

Then("Eu vejo uma mensagem de sucesso na remocao do {string}") do |string|
  page.has_content?(string + ' was successfully destroyed.')
end

#Barbearia

Given("Estou na pagina de nova barbearia") do
  visit '/barbearia/new'
  expect(page).to have_current_path('/barbearia/new')
end

When("Eu crio uma barbearia com nome {string}, contato {string}, usuario {string} e endereco {string}")  do |nome, contato, user_id, endereco_id|
  fill_in 'barbearium[nome]', :with => nome
  fill_in 'barbearium[contato]', :with => contato
  fill_in 'barbearium[usuario_id]', :with => user_id
  fill_in 'barbearium[endereco_id]', :with => endereco_id
  click_button 'Create Barbearium'
end


Then("Eu vejo uma tela com a mensagem de sucesso e os dados da barbearia.") do
  page.has_content?('Barbearium was successfully created.')
end

#Produtos

Given("Estou na pagina de novo produto") do
  visit '/produtos/new'
  expect(page).to have_current_path('/produtos/new')
end

When("Eu crio um produto com nome {string}, descricao {string}, valor {string}, quantidade {string}, barbearia {string}") do |nome, descricao, valor, quantidade, barbearia|
  fill_in 'produto[nome]', :with => nome
  fill_in 'produto[descricao]', :with => descricao
  fill_in 'produto[valor]', :with => valor
  fill_in 'produto[quantidade]', :with => quantidade
  fill_in 'produto[barbearium_id]', :with => barbearia
  click_button 'Create Produto'
end

Then("Eu vejo uma tela com a mensagem de sucesso e os dados do produto.") do
  page.has_content?('Produto was successfully created.')
end

Given("Estou na pagina de visualizacao do produto de nome {string}, descricao {string}, valor {string}, quantidade {string} e barbearia {string}") do |nome, descricao, valor, quantidade, barbearium_id|
  visit '/produtos/new'
  fill_in 'produto[nome]', :with => nome
  fill_in 'produto[descricao]', :with => descricao
  fill_in 'produto[valor]', :with => valor
  fill_in 'produto[quantidade]', :with => quantidade
  fill_in 'produto[barbearium_id]', :with => barbearium_id
  click_button 'Create Produto'
end
