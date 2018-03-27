Rails.application.routes.draw do
  get 'answers/', to: 'questions#index'


  devise_for :users
  root 'questions#index'
  resources :questions do
    resources :answers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end