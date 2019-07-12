Rails.application.routes.draw do
  resources :analytics
  resources :quotes
  resources :exercises
  resources :recipes
  resources :todo_lists
  resources :gratitude_journals
  resources :users do
    resources :todo_lists
    resources :gratitude_journals
    resources :recipes
    resources :exercises
    resources :quotes
    resources :analytics
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
