Rails.application.routes.draw do
  get "/content/error", to: "content#error"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :contents

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
