Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #  get '/items', to: 'items#index'
  #  get '/items/create', to: 'items#create'

  resources :items do
    get :upvote,    on: :member
    get :expensive, on: :collection
  end
end

