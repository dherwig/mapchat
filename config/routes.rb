Rails.application.routes.draw do
  resources :messages

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "new_photo" => "users#edit", :as => "new_photo"
  root :to => "users#new"
  resources :users
  resources :sessions
end
