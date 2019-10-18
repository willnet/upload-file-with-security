Rails.application.routes.draw do
  resources :secrets
  resources :users
  get "/secure/derivations/image/:name/:model_name/:id/*rest" => "secure_derivations#show"
  mount NormalUploader.derivation_endpoint => "derivations/image"

end
