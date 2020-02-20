Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/delete'
  resources :cocktails, only: [:index, :create, :new, :show] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
