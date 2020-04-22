Rails.application.routes.draw do
  resources :users, only: [:new, :create, :index]

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  post 'logout', to: 'sessions#logout'

  get 'welcome', to: 'sessions#welcome'

  get 'authorized', to: 'sessions#page_requires_login'

  root 'sessions#welcome'

end
