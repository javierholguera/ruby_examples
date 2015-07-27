Rails.application.routes.draw do
  root to: "homes#index"
  resources :decks do
  	resources :cards, except: :index
  end

  resources :users, only: [:new, :create]
  
  #resources :sessions, only: [:new, :create, :destroy] # no fits because we don't have an id
  resource :session, only: [:create, :new, :destroy]
end
