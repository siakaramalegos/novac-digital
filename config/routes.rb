Rails.application.routes.draw do
  resources :projects
  resources :filmmakers
  resources :owners
  resources :serials
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
