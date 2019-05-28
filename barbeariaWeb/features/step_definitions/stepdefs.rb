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
end

When("Clico em criar usuario") do
  click_button 'Create Usuario'
end

Then("Eu vejo uma tela com a mensagem de sucesso e meus dados de novo usuario.") do
  page.has_content?('Usuario was successfully created.')
end

When("Eu crio uma conta com nome {string}, sobrenome {string}, cpf {string}, senha {string} e contato em branco") do |nome, sobrenome, cpf, senha|
  fill_in 'usuario[nome]', :with => nome
  fill_in 'usuario[sobrenome]', :with => sobrenome
  fill_in 'usuario[cpf]', :with => cpf
  fill_in 'usuario[senha]', :with => senha
end

Then("Eu vejo uma tela com a mensagem de sucesso e meus dados de novo usuario sem inserir o contato.") do
  page.has_content?('Usuario was successfully created.')
end


When("Eu crio uma conta com nome vazio, sobrenome {string}, cpf {string}, senha {string} e contato {string}") do |sobrenome, cpf, senha, contato|
  fill_in 'usuario[sobrenome]', :with => sobrenome
  fill_in 'usuario[cpf]', :with => cpf
  fill_in 'usuario[senha]', :with => senha
  fill_in 'usuario[contato]', :with => contato
end

Then("Eu vejo que o usuario nao foi criado, pois o nome nao foi preenchido.") do
  page.has_content?('Nome can'+'t be blank')
end

Then("Eu vejo que o usuario nao foi criado, pois o cpf é muito curto.") do
  page.has_content?('Cpf is too short (minimum is 11 characters)')
end

When("Eu crio uma conta com nome {string}, sobrenome {string}, cpf {string}, senha em branco e contato {string}") do |nome, sobrenome, cpf, contato|
  fill_in 'usuario[nome]', :with => nome
  fill_in 'usuario[sobrenome]', :with => sobrenome
  fill_in 'usuario[cpf]', :with => cpf
  fill_in 'usuario[contato]', :with => contato
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
end

When("Clico em criar endereco") do
  click_button 'Create Endereco'
end

Then("Eu vejo uma tela com a mensagem de sucesso e os dados do endereco.") do
  page.has_content?('Endereco was successfully created.')
end

When("Eu crio um endereco com a rua em branco, bairro {string}, numero {string}") do |bairro, numero|
  fill_in 'endereco[bairro]', :with => bairro
  fill_in 'endereco[numero]', :with => numero
end

Then("Eu vejo que o endereco nao foi criado, pois a rua nao foi preenchida.") do
  page.has_content?('Rua can'+'t be blank')
end

When("Eu crio um endereco com a rua {string}, bairro em branco, numero {string}") do |rua, numero|
  fill_in 'endereco[rua]', :with => rua
  fill_in 'endereco[numero]', :with => numero
end

Then("Eu vejo que o endereco nao foi criado, pois o bairro nao foi preenchido.") do
  page.has_content?('Bairro can'+'t be blank')
end

When("Eu crio um endereco com a rua {string}, bairro {string}, numero em branco") do |rua, bairro|
  fill_in 'endereco[rua]', :with => rua
  fill_in 'endereco[bairro]', :with => bairro
end

Then("Eu vejo que o endereco nao foi criado, pois o numero nao foi preenchido.") do
  page.has_content?('Numero can'+'t be blank')
  page.has_content?('Numero is too short (minimum is 1 character)')
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
end

When("Clico em criar barbearia") do
  click_button 'Create Barbearium'
end

Then("Eu vejo uma tela com a mensagem de sucesso e os dados da barbearia.") do
  page.has_content?('Barbearium was successfully created.')
end

When("Eu crio uma barbearia com nome em branco, contato {string}, usuario {string} e endereco {string}") do |contato, user_id, endereco_id|
  fill_in 'barbearium[contato]', :with => contato
  fill_in 'barbearium[user_id]', :with => user_id
  fill_in 'barbearium[endereco_id]', :with => endereco_id
end

Then("Eu vejo que a barberia nao foi criada, pois o nome nao foi preenchido.") do
  page.has_content?('Nome can'+'t be blank')
  page.has_content?('Nome is too short (minimum is 3 characters)')
end
