Rails.application.routes.draw do
  root "static_pages#show", page: "home"

  get "/static_pages/*page" => "static_pages#show"
end
