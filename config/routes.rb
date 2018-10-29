Rails.application.routes.draw do
  devise_for :users , controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html]

  resources :questions do
    resources :answers
  end

  resources :answers

  resources :profiles, except: :edit

  resources :playlists do
    resources :videos
  end

  get '/settings', to: 'profiles#edit', as: 'edit_profile'

  root 'profiles#index'
end
