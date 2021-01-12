Rails.application.routes.draw do
  get '/' => 'home#home'
  get '/about' => 'home#about'
  get '/movies' => 'home#movies'
  get '/rallies' => 'home#rallies'


  get '/new_match' => 'matches#new_match'
  get '/matches' => 'matches#matches'
  get '/:id/edit' => 'matches#edit'

  get '/movies/search' =>'movies#search'
  get '/movies/:year' =>'movies#year'
  get '/movies/:year/:tournament' => 'movies#tournament'
  get '/movies/search' =>'movies#search'


  get '/new_rally' => 'rallies#new_rally'
  get '/rally_list' => 'rallies#rally_list'
  get '/:id/edit_rally' => 'rallies#edit_rally'

  get 'rallies/:name' => 'rallies#player'

  resources :matches
  resources :rallies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
