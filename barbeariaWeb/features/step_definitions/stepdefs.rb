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

Then("Eu vejo uma tela com a mensagem de sucesso e meus dados de novo usuario sem inserir o contato.") do
  page.has_content?('Usuario was successfully created.')
end

Then("Eu vejo que o usuario nao foi criado, pois o nome nao foi preenchido.") do
  page.has_content?('Nome can'+'t be blank')
end

Then("Eu vejo que o usuario nao foi criado, pois o cpf é muito curto.") do
  page.has_content?('Cpf is too short (minimum is 11 characters)')
end

Then("Eu vejo que o usuario nao foi criado, pois a senha nao foi preenchida.") do
  page.has_content?('Senha can'+'t be blank')
  page.has_content?('Senha is too short (minimum is 6 characters)')
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

Then("Eu vejo que houve um erro na criacao") do
  page.has_content?('Rua can'+'t be blank')
end

Given("Estou na pagina de visualizacao do endereco de rua {string}, bairro {string}, numero {string}") do |rua, bairro, numero|
  visit 'enderecos/new'
  fill_in 'endereco[rua]', :with => rua
  fill_in 'endereco[bairro]', :with => bairro
  fill_in 'endereco[numero]', :with => numero
  click_button 'Create Endereco'
end

When("Eu deleto o endereco") do
  click_link 'Destroy'
end

Then("Eu vejo uma mensagem de sucesso na remocao") do
  page.has_content?('Endereco was successfully destroyed.')
end




#Barbearia

Given("Estou na pagina de nova barbearia") do
  visit '/barbearia/new'
  expect(page).to have_current_path('/barbearia/new')
end

When("Eu crio uma barbearia com nome {string}, contato {string}, usuario {string} e endereco {string}")  do |nome, contato, user_id, endereco_id|
  fill_in 'barbearium[nome]', :with => nome
  fill_in 'barbearium[contato]', :with => contato
  fill_in 'barbearium[user_id]', :with => user_id
  fill_in 'barbearium[endereco_id]', :with => endereco_id
  click_button 'Create Barbearium'
end


Then("Eu vejo uma tela com a mensagem de sucesso e os dados da barbearia.") do
  page.has_content?('Barbearium was successfully created.')
end

When("Eu crio uma barbearia com nome em branco, contato {string}, usuario {string} e endereco {string}") do |contato, user_id, endereco_id|
  fill_in 'barbearium[contato]', :with => contato
  fill_in 'barbearium[user_id]', :with => user_id
  fill_in 'barbearium[endereco_id]', :with => endereco_id
  click_button 'Create Barbearium'
end

Then("Eu vejo que a barberia nao foi criada, pois o nome nao foi preenchido.") do
  page.has_content?('Nome can'+'t be blank')
  page.has_content?('Nome is too short (minimum is 3 characters)')
end
