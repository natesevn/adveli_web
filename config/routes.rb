Rails.application.routes.draw do
  
  resources :jobs

  root 'pages#index'

  get '/media', to: 'static_pages#media'
  
end
