Rails.application.routes.draw do
  root 'submissions#index'
  get 'sessions/new', to: "sessions#new", as: :login
  post 'sessions/new', to: "sessions#create"
  delete 'logout' => 'sessions#destroy'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :answers
  resources :questions
  resources :submissions
  resources :questionnaires
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
