json.extract! usuario, :id, :nome, :sobrenome, :cpf, :senha, :contato, :id_usuario, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
