Rails.application.routes.draw do
  root 'questions#index'

  resources :questions, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :questions do
    resources :answers
  end
  resources :answers, only: [:show, :create, :new]


end
