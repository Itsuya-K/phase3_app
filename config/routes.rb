Rails.application.routes.draw do
  get '/', to: 'tops#index'
  get 'sessions/new'
  resources :blogs do
    collection do
      post :confirm
    end
    member do
      patch :edit_confirm
    end
  end
  resources :users, only: [:new, :create, :show]
  resources :contacts, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
