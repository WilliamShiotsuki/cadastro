Rails.application.routes.draw do
  resources :pedido_produtos
  resources :pedidos
  resources :produtos
  resources :enderecos
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
