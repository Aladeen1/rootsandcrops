Rails.application.routes.draw do
  get 'page/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'page#index'
  resources :commitments, only: [:create]
  resources :quizs, only: [:create]
end
