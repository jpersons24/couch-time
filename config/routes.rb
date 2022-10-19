Rails.application.routes.draw do

  # movies
  #   "/url", to: "controller#action", as: "prefix"
  get "/movies", to: "movies#index", as: "movies"
  get "/movies/new", to: "movies#new", as: "new_movie"
  get "/movies/:id", to: "movies#show", as: "movie"
  get "/movies/:id/edit", to: "movies#edit", as: "edit_movie"
  post "/movies", to: "movies#create"
  patch "/movies/:id", to: "movies#update"
  delete "/movies/:id", to: "movies#destroy"
  
  
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  
  resources :watch_lists
  
  
  # resources :users -> only creates the 7 standard restful routes
  # resorces :users, only: [:index, :show] -> specifies which of the 7 restful routes to create
  # resources :user, except: [:delete] -> specifies which of the 7 restful routes to exclude


end

# HELPER METHODS
  # movies_path => "/movies"
  # movie_path => "/movies/:id"
  # new_movie_path => "/movies/new"
  # edit_movie_path => "/movies/:id/new"

  # users_path => "/users"
