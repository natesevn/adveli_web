Rails.application.routes.draw do
  get '/jobs', to: 'static_pages#jobs'
  resources :jobs
  root 'pages#index'
  
  get '/media', to: 'static_pages#media'
  
end
