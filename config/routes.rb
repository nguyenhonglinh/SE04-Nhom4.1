Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  as :user do
    get "/signup", to: "devise/registrations#new"
    post "/signup", to: "devise/registrations#create"
    get "/login", to: "devise/sessions#new"
    post "/login", to: "devise/sessions#create"
    delete "/logout", to: "devise/sessions#destroy"
  end
end
