Rails.application.routes.draw do
  get '/', to: 'restaurants#index', as: 'root'

  resources :restaurants, only: [:index, :new, :create, :show]

  resources :restaurants do
    resources :reviews, only: [:index, :new, :create, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
