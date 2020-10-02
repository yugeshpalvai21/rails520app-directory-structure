Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', omniauth_callbacks: 'users/callbacks' }
  root  to: 'pages#home'

  get 'pages/set_cookies'
  get 'pages/get_cookies'
  get 'pages/clean_cookies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
