Rails.application.routes.draw do

  get '/' => 'site#home'
  get '/search' => 'site#search'
  post '/search' => 'site#search'
  get '/popular' => 'site#popular'

  resources :concerts, only: [:index, :show, :new, :create] do
    resources :comments, only: [:create]
  end

end
