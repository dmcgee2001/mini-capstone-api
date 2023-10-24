Rails.application.routes.draw do
  get "/one_product", controller: "products", action: "one_product"
  get "/one_product2", controller: "products", action: "one_product2"
  get "/one_product3", controller: "products", action: "one_product3"
  get "all_products", controller: "products", action: "all_products"
  get "random_product", controller: "products", action: "random"
end
