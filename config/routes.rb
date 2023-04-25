Rails.application.routes.draw do
  devise_for :users
root "splashscreen#index"
end
