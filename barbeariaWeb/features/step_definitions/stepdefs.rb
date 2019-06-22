Given("Estou na pagina de novo usuario") do
  visit '/users/login'
  fill_in 'user[email]', :with => 'ale@jun.com'
  fill_in 'user[password]', :with => '123456'
  click_button 'Log in'

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

Then("Eu vejo uma tela com a mensagem de sucesso na criacao") do
  page.has_content?('successfully created.')
end

Given("Estou na pagina de criar um novo endereco") do
  visit '/users/login'
  fill_in 'user[email]', :with => 'ale@jun.com'
  fill_in 'user[password]', :with => '123456'
  click_button 'Log in'

  visit '/enderecos/new'
  expect(page).to have_current_path('/enderecos/new')
end

When("Eu crio um endereco com a rua {string}, bairro {string}, numero {string}")  do |rua, bairro, numero|
  fill_in 'endereco[rua]', :with => rua
  fill_in 'endereco[bairro]', :with => bairro
  fill_in 'endereco[numero]', :with => numero
  click_button 'Create Endereco'
end

Then("Eu vejo que houve um erro na criacao") do
  page.has_content?('error prohibited')
end

Given("Estou na pagina de visualizacao do endereco de rua {string}, bairro {string}, numero {string}, barbearia {string}") do |rua, bairro, numero, barbearium_id|
  visit '/users/login'
  fill_in 'user[email]', :with => 'ale@jun.com'
  fill_in 'user[password]', :with => '123456'
  click_button 'Log in'

  visit 'enderecos/new'
  fill_in 'endereco[rua]', :with => rua
  fill_in 'endereco[bairro]', :with => bairro
  fill_in 'endereco[numero]', :with => numero
  fill_in 'endereco[barbearium_id]', :with => barbearium_id
  click_button 'Create Endereco'
end

When("Eu efetuo a remocao") do
  click_link 'Destroy'
end

Then("Eu vejo uma mensagem de sucesso na remocao") do
  page.has_content?('successfully destroyed.')
end

Given("Estou na pagina de criar uma nova barbearia") do

  visit '/users/register'
  fill_in 'user[email]', :with => 'ale@jun.com'
  fill_in 'user[password]', :with => '123456'
  fill_in 'user[password_confirmation]', :with => '123456'
  click_button 'Sign up'



  if page.has_content?('Password confirmation')
    visit '/users/login'
    fill_in 'user[email]', :with => 'ale@jun.com'
    fill_in 'user[password]', :with => '123456'
    click_button 'Log in'
  end
  visit '/usuarios/new'

  fill_in 'usuario[nome]', :with => 'João'
  fill_in 'usuario[sobrenome]', :with => 'Silva'
  fill_in 'usuario[cpf]', :with => '52635899941'
  fill_in 'usuario[senha]', :with => '152634'
  fill_in 'usuario[contato]', :with => '53695248532'
  click_button 'Create Usuario'
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

Given("Estou na pagina de criar um novo produto") do
  visit '/users/login'
  fill_in 'user[email]', :with => 'ale@jun.com'
  fill_in 'user[password]', :with => '123456'
  click_button 'Log in'

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

Given("Estou na pagina de visualizacao do produto de nome {string}, descricao {string}, valor {string}, quantidade {string} e barbearia {string}") do |nome, descricao, valor, quantidade, barbearium_id|

  visit '/users/login'
  fill_in 'user[email]', :with => 'ale@jun.com'
  fill_in 'user[password]', :with => '123456'
  click_button 'Log in'

  visit '/usuarios/new'

  fill_in 'usuario[nome]', :with => 'João'
  fill_in 'usuario[sobrenome]', :with => 'Silva'
  fill_in 'usuario[cpf]', :with => '52635899941'
  fill_in 'usuario[senha]', :with => '152634'
  fill_in 'usuario[contato]', :with => '53695248532'
  click_button 'Create Usuario'

  visit '/barbearia/new'
  fill_in 'barbearium[nome]', :with => 'Barb'
  fill_in 'barbearium[contato]', :with => '8186594875'
  fill_in 'barbearium[usuario_id]', :with => '1'
  fill_in 'barbearium[endereco_id]', :with => '1'
  click_button 'Create Barbearium'

  visit '/produtos/new'

  fill_in 'produto[nome]', :with => nome
  fill_in 'produto[descricao]', :with => descricao
  fill_in 'produto[valor]', :with => valor
  fill_in 'produto[quantidade]', :with => quantidade
  fill_in 'produto[barbearium_id]', :with => barbearium_id
  click_button 'Create Produto'
end
