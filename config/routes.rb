Rails.application.routes.draw do
  devise_for :users
  
  get '/worktimes/profile', to: 'worktimes#profile'
  
  resources :worktimes
  
  root "worktimes#index"
end
