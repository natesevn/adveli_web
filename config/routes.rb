Rails.application.routes.draw do
  
  resources :jobs, only: [:index, :show]

  root 'pages#index'

  get '/media', to: 'static_pages#media'
  
end
