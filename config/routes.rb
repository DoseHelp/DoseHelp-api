Rails.application.routes.draw do
  resources :notes
  resources :payments
  resources :dispenses
  resources :prescriptions
  resources :drugs
  resources :doctors
  resources :patients
  
  get "patients/:patient_id/prescriptions", to: "prescriptions#prescriptions_list", as: "prescriptions_list"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/auth' do 
    post "/signup", to: "users#create"
    post "/signin", to: "users#sign_in"
  end
end
