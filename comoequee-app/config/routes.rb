# frozen_string_literal: true

Rails.application.routes.draw do
  # Session and user routes
  get  '/login/',                 to: 'session#new',          as: 'login'
  post '/login/',                 to: 'session#create',       as: 'login-form'
  get  '/logout/',                to: 'session#destroy',      as: 'logout'
  get  '/cadastro/',              to: 'user#new',             as: 'register'
  post '/cadastro/',              to: 'user#create',          as: 'register-form'
  # Login with google
  get 'auth/:provider/callback',  to: 'session#createGoogle', as: 'login-google'
  get 'auth/failure',             to: redirect('/login/'),    as: 'login-failure'
  # Main routes
  get  '/perfil/',                to: 'profile#index',        as: 'profile'
  get  '/tutoriais/',             to: 'tutorials#index',      as: 'tutorials'
  get  '/index/',                 to: 'index#index',          as: 'index'

  root 'index#index'
  # FORMAT: get: [path], to: [controller#action], as: [name of route]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
