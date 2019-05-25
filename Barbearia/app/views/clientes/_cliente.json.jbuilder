json.extract! cliente, :id, :nome, :sobronome, :cpf, :idade, :senha, :cliente_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
