Rails.application.routes.draw do
  devise_for :users
  get 'home/users/sign_up'
  get 'home/about'
  get 'home/lookupform'
  post 'home/lookupform' => 'home/lookupform'
root 'home#index'
end
