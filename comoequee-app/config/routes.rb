# frozen_string_literal: true

Rails.application.routes.draw do
  get "index/", to: "index#index", as: "index"
  get "tutoriais/", to: "tutorials#index", as: "tutorials"
  get 'register/user'
  resources :users

  root "index#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
