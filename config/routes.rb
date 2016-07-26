Rails.application.routes.draw do

    # Admin ===================================================================
    resources :admins


    # Blog ===================================================================
    resources :blogs
    # get 'blog', to: 'blogs#index', as: 'blog'


    # Pages ===================================================================
    get 'about', to: 'pages#about', as: 'about'
    get 'contact', to: 'pages#contact', as: 'contact'


    # Projects ===================================================================
    resources :projects
    # get 'projects', to: 'projects#index', as: 'projects'


    # Sessions ===================================================================
    resources :sessions, only: [:new, :create, :destroy]
    get 'signup', to: 'admins#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'


    # Welcome ===================================================================
    get 'welcome/index'
    root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
