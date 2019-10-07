Rails.application.routes.draw do
  get 'user/index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  # get 'show', to: "pages#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :events do
    resources :interests, only:[:create]
    resources :reviews, only:[:create]
  end

  resources :plans, except:[:destroy] do
    resources :event_plans, only:[:create]
  end

  resources :reviews, only:[:destroy]
  resources :interests, only:[:destroy]

  get 'events/tagged', to: "events#tagged", as: :tagged
  get "my_page", to: "users#my_page"
end
