Rails.application.routes.draw do
  # For Products
  get "/products/:id" => "products#show"
  get "/products" => "products#index"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  # For Suppliers
  get "/suppliers/:id" => "suppliers#show"
  get "/suppliers" => "suppliers#index"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  # For Images
  get "/images/:id" => "images#show"
  get "/images" => "images#index"
  post "/images" => "images#create"
  patch "/images/:id" => "images#update"
  delete "/images/:id" => "images#destroy"

  # For Users
  get "/users/:id" => "users#show"
  get "/users" => "users#index"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  # For Login
  post "/sessions" => "sessions#create"

  # For Orders
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders/" => "orders#index"

  # For Carted Products
  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
  delete "/carted_products/:id" => "carted_products#destroy"
end
