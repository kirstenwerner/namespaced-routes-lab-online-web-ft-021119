Rails.application.routes.draw do
  resources :artists, only: %i[show index new] do
    resources :songs, only: %i[show index]
  end

  resources :songs, only: %i[index show new create edit update]

  namespace :admin do
    resources :preferences, only: [:index]
  end

  root 'songs#index'
end
