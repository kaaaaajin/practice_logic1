Rails.application.routes.draw do
   
   root "users#new" 
   resources :users, only: [:create,:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
