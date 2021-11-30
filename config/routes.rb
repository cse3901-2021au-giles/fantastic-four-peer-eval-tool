Rails.application.routes.draw do
  resources :score_categories
  resources :scores
  resources :projects
  resources :reviews
  resources :peer_evaluations
  resources :teams
  root   'static_pages#home'
  get    '/roster',    to: 'static_pages#roster'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # get    '/projects', to: 'projects'
  resources :users
end