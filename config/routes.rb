Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'

  resources :admins

  get 'welcome/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
