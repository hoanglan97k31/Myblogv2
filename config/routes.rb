Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  concern :paginatable do
    get '(:page)', action: :index, on: :collection, as: ''
  end

  root 'pages#index'
  get 'about', to: 'pages#about'
  resources :pages, only: :index, concerns: :paginatable
  resources :articles
  resources :categories
end
