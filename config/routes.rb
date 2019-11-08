Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/products" => "products#index"
    # get "/products" => "products#one_product"
    # get "/products/:name" => "products#one_product"
    # post "/body_param" => "products#body"
    # get "/pirate_ship" => "products#pirate_ship"
    # get "/dragon_egg" => "products#dragon_egg"
    # get "/pandoras_box" => "products#pandoras_box"
    # get "/killer_robot" => "products#killer_robot"
    # get "/balloon" => "products#balloon"
  end
end
