Rails.application.routes.draw do

  devise_for :users
  resources :loops

  root 'loops#index';

end
