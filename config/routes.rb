Rails.application.routes.draw do

  devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)
  root to: 'home#index'
  resources :teams
  devise_scope :user do
   get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
   post '/sign_up' => 'devise/registrations#create'
   get "/sign_in" => "devise/sessions#new", as: "new_user_session" # custom path to sign_up/registration
   post '/sign_in' => 'devise/sessions#create'
   get '/password/new' => 'devise/passwords#new', as: "new_user_password"
   get '/users/:id/edit' => 'users#edit', as: "edit_user_registration"
   put '/sign_up' => 'registrations#update', as: "user_registration"
   get '/users/:id' => 'users#show', as: "show_user"
  end

  resources :users do
    resources :volunteers
    post '/volunteers/:id' => 'volunteers#create', as: "create_volunteer"
  end


  get '/volunteers/:id/event' => 'volunteers#event', as: "volunteer_event"

  resources :events do
    resources :activities
    resources :supplementals
  end

  devise_for :users, skip: :sessions
  #devise_for :users#, controllers: { registrations: "devise/registrations"}



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
