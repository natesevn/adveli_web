Rails.application.routes.draw do
  resources :jobs
  root 'pages#index'
  
  get '/media', to: 'static_pages#media'
  get '/jobs', to: 'static_pages#jobs'
end
