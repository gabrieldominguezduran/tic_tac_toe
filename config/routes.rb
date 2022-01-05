Rails.application.routes.draw do
 resources :games do
   resources :moves, only: [:create]
 end
 root to: 'games#index'
end
