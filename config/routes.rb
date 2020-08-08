Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/search', to: 'search#new'
  post '/search/', to: 'search#create'
  root to: 'search#new'
end
