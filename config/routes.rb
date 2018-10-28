Rails.application.routes.draw do
  devise_for :users , controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html]

  resources :questions do
    resources :answers
  end

  resources :answers

  resources :profiles

  resources :classes do
    resources :videos
  end

  root 'profiles#index'
end
