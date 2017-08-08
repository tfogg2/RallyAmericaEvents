Rails.application.routes.draw do

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'home#index'



  resources :events do
    resources :activities
    resources :supplementals
  end
  resources :teams

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
