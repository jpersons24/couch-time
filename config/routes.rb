Rails.application.routes.draw do

  # movies
  #   "/url", to: "controller#action", as: "prefix"
  get "/movies", to: "movies#index", as: "movies"
  get "/movies/new", to: "movies#new", as: "new_movie"
  get "/movies/:id", to: "movies#show", as: "movie"
  get "/movies/:id/edit", to: "movies#edit", as: "edit_movie"
  post "/movies", to: "movies#create"
  patch "/movies/:id", to: "movies#update"


end

# HELPER METHODS
  # movies_path => "/movies"
  # movie_path => "/movies/:id"
  # new_movie_path => "/movies/new"
  # edit_movie_path => "/movies/:id/new"
