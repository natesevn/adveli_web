Rails.application.routes.draw do
  
  resources :jobs, except: :index
  root 'pages#index'
  
  get '/jobs', to: 'static_pages#jobs'
  get '/media', to: 'static_pages#media'
  
end
