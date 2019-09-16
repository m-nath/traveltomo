Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :events, except:[:destroy] do
    resources :interests, only:[:create]
    resources :reviews, only:[:create]
  end

  resources :plans, except:[:destroy] do
    resources :event_plans, only:[:create]
  end

  resources :reviews, only:[:destroy]
  resources :interests, only:[:destroy]

  get 'events/tagged', to: "events#tagged", as: :tagged
end
