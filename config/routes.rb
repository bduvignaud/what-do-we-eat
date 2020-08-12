Rails.application.routes.draw do
  #get '/show' => 'recipes#show
  resource :recipes, only: [:show, :index] do
    get :autocomplete_tag_name, :on => :collection
  end
  root 'recipes#index'
end
