Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :articles
  resources :categories
end
