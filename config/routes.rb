Rails.application.routes.draw do
  get 'realisations/show'
  ActiveAdmin.routes(self)
  devise_for :users, :skip => :registration
  root to: 'pages#home'
  resources :contacts
  resources :realisations
  resources :categories
  resources :pictures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
