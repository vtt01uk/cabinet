Rails.application.routes.draw do

  devise_for :users
  root 'welcome#index'
  #relating to the controller Docs, generates the necessary routes
  resources :docs
end
