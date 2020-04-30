Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, :skip => :registration
  root to: 'pages#home'
  resources :contacts
  resources :realisations
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
