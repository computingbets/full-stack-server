Rails.application.routes.draw do
  resources :songs, except: [:new, :edit]
  resources :answers, except: [:new, :edit]
  resources :questions, except: [:new, :edit]
  resources :playlists, except: [:new, :edit]
  resources :games, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
