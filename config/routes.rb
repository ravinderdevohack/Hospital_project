Rails.application.routes.draw do
  resources :nurses
  resources :patients
  resources :wards
  root 'hospital#index'
  resources :doctors
  resources :appointments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
