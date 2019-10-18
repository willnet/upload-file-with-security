Rails.application.routes.draw do
  resources :secrets
  resources :users
  mount NormalUploader.derivation_endpoint => "derivations/image"
end
