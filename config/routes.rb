Rails.application.routes.draw do
  get "/products/:id" => "products#show"
  get "/products" => "products#index"
  get "random_product", controller: "products", action: "random"
end
