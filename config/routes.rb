Rails.application.routes.draw do
  devise_for :users , controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html]

  resources :questions do
    resources :answers
    resources :bookmarks
  end

  resources :bookmarks do
    resources :questions
    resources :profiles
  end

  resources :answers

  resources :profiles, except: :edit do
    resources :bookmarks
    resources :questions
    resources :answers
  end

  resources :playlists do
    resources :videos
  end

  get '/settings', to: 'profiles#edit', as: 'edit_profile'

  root 'profiles#index'
end
