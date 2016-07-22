Rails.application.routes.draw do

  resources :admins

  resources :pages
    get 'about', to: 'pages#about', as: 'about'

  resources :sessions, only: [:new, :create, :destroy]
    get 'signup', to: 'admins#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'

    get 'welcome/index'
    root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
