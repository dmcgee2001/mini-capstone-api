Rails.application.routes.draw do
  get "/one_product/:id", controller: "products", action: "one_product"
  get "all_products", controller: "products", action: "all_products"
  get "random_product", controller: "products", action: "random"
end
