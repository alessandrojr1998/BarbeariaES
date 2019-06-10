json.extract! produto, :id, :nome, :descricao, :valor, :quantidade, :created_at, :updated_at
json.url produto_url(produto, format: :json)
