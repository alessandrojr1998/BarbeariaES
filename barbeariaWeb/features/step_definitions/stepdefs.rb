Given("Estou na pagina de novo usuario") do
  visit '/usuarios/new'
  expect(page).to have_current_path('/usuarios/new')
end

When("Eu crio uma conta com {string},{string},{string},{string} e {string}") do |nome, sobrenome, cpf, senha, contato|
  fill_in 'usuario[nome]', :with => nome
  fill_in 'usuario[sobrenome]', :with => sobrenome
  fill_in 'usuario[cpf]', :with => cpf
  fill_in 'usuario[senha]', :with => senha
  fill_in 'usuario[contato]', :with => contato
end

When("Clico em criar usuario") do
  click_button 'Create Usuario'
end

Then("Eu vejo uma tela com a mensagem de sucesso e meus dados de novo cliente.") do
  page.has_no_content?('Usuario was successfully created.')
end
