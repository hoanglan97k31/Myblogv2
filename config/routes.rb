Rails.application.routes.draw do
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :articles
  resources :categories
end
