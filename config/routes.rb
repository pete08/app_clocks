Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/clocks" => "clocks#index"
    get "/clocks/:id" => "clocks#show"

    post "/clocks/:id" => "clocks#update"

    delete "/clocks/:id" => "clocks#destroy"

  end
end
