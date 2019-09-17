Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'forecasts#show'
      get '/gifs', to: 'gifs#index'
      get '/backgrounds', to: 'backgrounds#index'
      post '/user', to: 'users#create'
      post '/session', to: 'sessions#create'
    end
  end
end
