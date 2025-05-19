Rails.application.routes.draw do
  
  root "home#index"

  get "home/index"
  get "home/about"
  get "home/contactus"
  get "home/help"
  get "home/Rose"



  
  resources :microposts do
    member do
      get :like
    end
  end

  resources :users

  #get 'microposts/:id/like' => 'microposts#like', as: :likeAPost
  
end
