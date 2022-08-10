Rails.application.routes.draw do
  resources :indicated_talents
  resources :desired_talents
  devise_for :users
  root "static_pages#home"
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end
end