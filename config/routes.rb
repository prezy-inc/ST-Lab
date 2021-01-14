Rails.application.routes.draw do
  get '/' => 'home#home'
  get '/about' => 'home#about'
  get '/movies' => 'home#movies'
  get '/rallies' => 'home#rallies'


  get '/hfisgfiygsdivhsugfsvjzcvyicsvwrvihbidsbos' => 'matches#new_match'
  get '/mahkfvadefbfhdbfhaeidyeqvfadgbhbfwevfiadf' => 'matches#matches'
  get '/:id/hdvfuhaijbhsdbdfbiusdjehbdebdbfhbjbhb' => 'matches#edit'

  get '/movies/search' =>'movies#search'
  get '/movies/:year' =>'movies#year'
  get '/movies/:year/:tournament' => 'movies#tournament'
  get '/movies/search' =>'movies#search'


  get '/hfbhdsbfbdjnaihuoehdbjuaeydjfeufbyefebufb' => 'rallies#new_rally'
  get '/dhbfyagysnjshyedeuydednjahkaehdjaehdhaehd' => 'rallies#rally_list'
  get '/:id/jkbfadufgyedaydvysuhbnhybedfheyfaefnb' => 'rallies#edit_rally'

  get 'rallies/:name' => 'rallies#player'

  resources :matches
  resources :rallies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
