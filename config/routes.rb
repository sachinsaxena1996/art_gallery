Rails.application.routes.draw do
  root 'foot_traffics#new'
  resources :foot_traffics, only: %i[show new create]
end
