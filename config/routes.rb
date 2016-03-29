Rails.application.routes.draw do

  devise_for :users
  #For everyone who hasn't logged in
  
  authenticated :user do
    #For someone who has logged in
    root "docs#index", as: "authenticated_root"
  end
  
  root 'welcome#index'
  #relating to the controller Docs, generates the necessary routes
  resources :docs
end
