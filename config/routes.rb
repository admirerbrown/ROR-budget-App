Rails.application.routes.draw do
  devise_for :users
root "splashscreen#index"
post '/groups_wallets', to: 'groups_wallets#create'
get ':id/new_groups_wallets/', to: 'groups_wallets#new'



 resources :groups, only: [:index, :show, :create, :new], path: 'categories'
resources :groups_wallets, only: [:new, :create], path: 'group_expenses'


 resources :wallets, only: [:index], path: 'expenses'


end
