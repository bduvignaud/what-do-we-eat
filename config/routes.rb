Rails.application.routes.draw do
  get '/show' => 'recipes#show'
  root 'recipes#index'
end
