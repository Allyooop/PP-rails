Rails.application.routes.draw do
  
  resources :services, only: [:index, :show]
  resources :contacts, only: [ :index, :new, :create]

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'index' => 'static_pages#index'
  get 'about' => 'static_pages#about'
  get 'payment' => 'static_pages#payment'
  get 'faqs' => 'questions#index'
  
  root to: 'static_pages#index'

end