Rails.application.routes.draw do
  resources :lectures do
    member do
      put "like" => "lectures#like"
      put "unlike" => "lectures#unlike"
      put "spam" => "lectures#spam"
      put "unspam" => "lectures#unspam"
    end
    resources :comments
  end
  resources :courses
  root 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
