Rails.application.routes.draw do

  devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)
  root to: 'home#index'
  resources :teams
  devise_scope :user do
   get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
   post '/sign_up' => 'devise/registrations#create'
  end

  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :volunteers
  resources :events do
    resources :activities
    resources :supplementals
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
