Rails.application.routes.draw do

  devise_for :users
  resources :loops

  root 'loops#index';
  get "browse/verified" => "loops#browse_verified"
  get "browse/all" => "loops#browse_all"
end
