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
end
