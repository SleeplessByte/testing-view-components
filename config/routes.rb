Rails.application.routes.draw do
  resource :search, only: %i[get post]

  # Top-level pages
  get '/', controller: :pages, action: :home
  get '/about', controller: :pages, action: :about

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
