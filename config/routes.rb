Rails.application.routes.draw do
  get '/signup', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  get '/:id', to: 'welcome#homepage', as: 'homepage'

end
