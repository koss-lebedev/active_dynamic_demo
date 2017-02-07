Rails.application.routes.draw do
  resources :contact_attributes
  resources :contacts

  root 'contacts#index'
end
