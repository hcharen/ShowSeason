Rails.application.routes.draw do
  namespace :dashboard do
    authenticated :student do
      resources :events, module: "student", :only => [:show, :index]
    end
    authenticated :instructor do
      resources :events, module: "instructor"
    end
    root to: "dashboard/dashboard#index"
  end

  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_for :students
  devise_for :instructors

  resources :events
  resources :users
  resources :students
  resources :instructors

  root "dashboard/dashboard#index"


end
