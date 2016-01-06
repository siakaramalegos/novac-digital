Rails.application.routes.draw do
  resources :tape_formats
  resources :formats
  resources :brands
  resources :conditions
  resources :physicals, path: 'tapes' do
    get 'digitize' => 'projects#digitize'
    post 'digitize' => 'projects#create_by_tape'
  end
  resources :digitals
  resources :projects
  resources :filmmakers
  resources :owners
  # resources :serials
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
