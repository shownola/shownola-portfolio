Rails.application.routes.draw do

  root to: 'pages#home'

  resources :topics, only: [:index, :show, :new, :create]
  # resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end

resources :portfolios

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'


  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'




  match "/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unacceptable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

  match '(*any)', to: redirect(subdomain: ''), via: :all, constraints: {subdomain: 'www'}


end
