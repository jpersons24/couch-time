Rails.application.routes.draw do

  # movies
  #   "/url", to: "controller#action", as: "prefix"
  get "/movies", to: "movies#index", as: "movies"
  get "/movies/:id", to: "movies#show", as: "movie"
end
