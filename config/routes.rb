Rails.application.routes.draw do
  resources :tape_formats
  resources :formats
  resources :brands
  resources :conditions
  resources :physicals
  resources :digitals
  resources :projects
  resources :filmmakers
  resources :owners
  resources :serials
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
