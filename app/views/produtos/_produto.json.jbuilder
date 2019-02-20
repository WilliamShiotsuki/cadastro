json.extract! produto, :id, :cod, :nome, :valor, :descricao, :created_at, :updated_at
json.url produto_url(produto, format: :json)
