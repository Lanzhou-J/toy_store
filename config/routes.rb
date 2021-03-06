Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "toys#index"
  get "/toys/add", to: "toys#add"
  post "toys/new", to: "toys#new"
  get "/toys", to: "toys#display"
  delete "toys/delete/:id", to: "toys#update"
  put "toys/update/:id", to: "toys#update"
  get "/toys/show/:id", to: "toys#show"
  
end
