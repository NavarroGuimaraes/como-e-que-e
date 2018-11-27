# frozen_string_literal: true

Rails.application.routes.draw do
  resources :crudtutoriais
  get 'crudtutorial/index'
  # Session and user routes
  get  '/login/',                     to: 'session#new',          as: 'login'
  post '/login/',                     to: 'session#create',       as: 'login-form'
  get  '/logout/',                    to: 'session#destroy',      as: 'logout'
  get  '/cadastro/',                  to: 'user#new',             as: 'register'
  post '/cadastro/',                  to: 'user#create',          as: 'register-form'
  get  '/delete/',                    to: 'user#destroy',         as: 'delete-user'
  # Login with google
  get  'auth/:provider/callback',     to: 'session#createGoogle', as: 'login-google'
  get  'auth/failure',                to: redirect('/login/'),    as: 'login-failure'
  # Tutorials
  get  '/tuto/:tutorial_id',          to: 'tutorial#show',        as: 'first-tutorial',   constraints: { tutorial_id: /.*/ }
  get  '/tutorial/:tutorial_id/:chapter_id/:content_id',          to: 'tutorial#index',       as: 'tutorial',         constraints: { tutorial_id: /.*/, chapter_id: /.*/, content_id: /.*/  }
  # Main routes
  get  '/perfil/',                    to: 'profile#index',        as: 'profile'
  get  '/tutoriais/',                 to: 'tutorials#index',      as: 'tutorials'
  get  '/index/',                     to: 'index#index',          as: 'index'

  root 'index#index'
  # FORMAT: get: [path], to: [controller#action], as: [name of route]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
  }

end
