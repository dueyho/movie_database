ToSee::Application.routes.draw do
  match('/movies', {:via => :get, :to => 'movies#index'})
  match('/movies', {:via => :post, :to => 'movies#create'})
  match('/movies/:slug', {:via => :get, :to => 'movies#show'})
  match('/movies/:slug', {:via => [:patch, :put], :to => 'movies#update'})
  match('movies/:slug', {:via => :delete, :to => 'movies#destroy'})

  ########Genre Routes###
  match('/genres', {:via => :get, :to => 'genres#index'})
  match('/genres', {:via => :post, :to => 'genres#create'})
  match('/genres/:slug', {:via => :get, :to => 'genres#show'})
  match('/genres/:slug', {:via => [:patch, :put], :to => 'genres#update'})
  match('genres/:slug', {:via => :delete, :to => 'genres#destroy'})
end
