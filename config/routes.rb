Rails.application.routes.draw do

  root 'welcome#index'
  #relating to the controller Docs, generates the necessary routes
  resources :docs
end
