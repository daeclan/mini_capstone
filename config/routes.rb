Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "products/:id" => "products#destroy"
    post "/users" => "users#create"

    # get "/products" => "products#products_data"
    # get "/product_info" => "products#product_data"
    # get "/query_entry" => "products#query_entry"
    # get "/segment_entry/:product" => "products#segment_entry"
  end
end
