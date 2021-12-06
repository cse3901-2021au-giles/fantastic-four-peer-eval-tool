Rails.application.routes.draw do
  resources :projects
  resources :reviews
  resources :peer_evaluations
  resources :teams
  resources :memberships
  root   'static_pages#home'
  get    '/my_teams',    to: 'static_pages#my_teams'
  get    '/roster',    to: 'static_pages#roster'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end