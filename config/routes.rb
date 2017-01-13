Rails.application.routes.draw do
  resources :profile_fields
  resources :profiles

  root 'profiles#index'
end
