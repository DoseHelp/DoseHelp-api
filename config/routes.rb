Rails.application.routes.draw do
  resources :dispenses
  resources :prescriptions
  resources :drugs
  resources :doctors
  resources :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/auth' do 
    post "/signup", to: "users#create"
    post "/signin", to: "users#sign_in"
  end
end
