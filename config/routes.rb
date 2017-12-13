Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_for :students
  devise_for :instructors

  resources :events
  resources :users
  resources :students
  resources :instructors



  root 'events#index'
end
