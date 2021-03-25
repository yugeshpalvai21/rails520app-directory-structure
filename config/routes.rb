Rails.application.routes.draw do
  root 'pages#home'
  
  get '/search', to: 'pages#search'
  post '/search-results', to: 'pages#search_results'

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :articles, only: [:index] 
    end
  end

  # get 'pages/about'

  # get 'contact', to: 'pages#contact'
  # get 'privacy-policy', to: 'pages#privacy', as: 'privacy'

  # resources :articles do
  #   resources :comments
  # end

  # resources :jobs, only: [:index] do
  #   collection do
  #     get 'search'
  #   end

  #   member do
  #     get 'stats'
  #   end
  # end

  # namespace :api do
  #   namespace :v1 do
  #     resources :products
  #   end
  # end

  # scope :admin do
  #   get 'customers', to: 'pages#customers'
  # end

  # match 'photo/:id' => 'photos#show', via: [:get, :post], as: 'show_photo'

  # match '/stories' => redirect('/posts'), via: :get

  # resources :episodes, constraints: { subdomain: 'api' }
end
