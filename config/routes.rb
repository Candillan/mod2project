Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #Reviews Routes
  #root route currently goes to the reviews controller
  #get '/', to: "reviews#index"
  get '/reviews', to: "reviews#index", as: "reviews"
  get '/reviews/new', to: "reviews#new", as: "new_review"
  get '/reviews/:id', to: "reviews#show", as: "review"
  post '/reviews', to: "reviews#create"
  get '/reviews/:id/edit', to: "reviews#edit", as: "edit_review"
  patch '/reviews/:id', to: "reviews#update"
  delete '/reviews/:id', to: "reviews#destroy"
  
  
  #Users Routes
  get '/users', to: "users#index", as: "users"
  get '/users/new', to: "users#new", as: "new_user"
  get '/users/:id', to: "users#show", as: "user"
  post '/users', to: "users#create"
  get '/users/:id/edit', to: "users#edit", as: "edit_user"
  patch '/users/:id', to: "users#update"
  delete '/users/:id', to: "users#destroy"
  
  
  #Games Routes
  get '/games', to: "games#index", as: "games"
  get '/games/new', to: "games#new", as: "new_game"
  get '/games/1', to: "games#b3show"
  get '/games/2', to: "games#wowshow"
  get '/games/3', to: "games#scshow"
  get '/games/4', to: "games#aoeshow"
  get '/games/5', to: "games#ssbshow"
  get '/games/6', to: "games#civshow"
  get '/games/7', to: "games#skyrimshow"
  get '/games/8', to: "games#horizonshow"
  get '/games/9', to: "games#morrowindshow"
  get '/games/10', to: "games#oblivionshow"
  get '/games/:id', to: "games#show", as: "game"
  
  post '/games', to: "games#create"
  get '/games/:id/edit', to: "games#edit", as: "edit_game"
  patch '/games/:id', to: "games#update"
  delete '/games/:id', to: "games#delete"


  #Developers Routes
  get '/developers', to: "developers#index", as: "developers"
  get '/developers/new', to: "developers#new", as: "new_developer"
  get '/developers/:id', to: "developers#show", as: "developer"
  post '/developers', to: "developers#create"
  get '/developers/:id/edit', to: "developers#edit", as: "edit_developer"
  patch '/developers/:id', to: "developers#update"
  delete '/developers/:id', to: "developers#delete"

  #Sessions Routes
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"
 
end
