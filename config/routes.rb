Rails.application.routes.draw do
  resources :portfolios

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'



  resources :blogs do
    member do
      get :toggle_status
      end
    end


end
