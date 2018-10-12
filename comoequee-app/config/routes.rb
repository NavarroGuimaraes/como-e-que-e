# frozen_string_literal: true

Rails.application.routes.draw do
  get 'perfil/', to: 'profile#index', as: 'profile'
  get 'logout/', to: 'session#destroy', as: 'logout'
  get 'login/', to: 'session#create', as: 'login'
  get 'cadastro/', to: 'session#new', as: 'register'
  get 'tutoriais/', to: 'tutorials#index', as: 'tutorials'
  get 'index/', to: 'index#index', as: 'index'

  root 'index#index'
  # FORMAT: get: [path], to: [controller#action], as: [name of route]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
