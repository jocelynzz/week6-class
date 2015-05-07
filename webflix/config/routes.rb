Rails.application.routes.draw do

  root 'movies#index'


  #########################################################
  # The "Golden 7" for accessing the "movies" resource


  get '/movies/new' => 'movies#new', as: 'new_movie'
  post '/movies' => 'movies#create', as: 'movies'

  get '/movies' => 'movies#index'
  get '/movies/:id' => 'movies#show', as: 'movie'

  get '/movies/:id/edit' => 'movies#edit', as: 'edit_movie'
  patch '/movies/:id' => 'movies#update'

  delete '/movies/:id' => 'movies#destroy'


  #########################################################
  # The "Golden 7" for accessing the "directors" resource

  get '/directors/new' => 'directors#new', as: 'new_director'

  get '/directors' => 'directors#index', as: 'directors'
  post '/directors' => 'directors#create'

  get '/directors/:id' => 'directors#show', as: 'director'


  get '/directors/:id/edit' => 'directors#edit', as: 'edit_director'
  patch '/directors/:id' => 'directors#update'

  get '/directors/:id' => 'directors#destroy'


end
