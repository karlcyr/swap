Swap::Application.routes.draw do
  get "welcome/index"
  get "logout" => "sessions#destroy"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
 
  resources :items
  resources :users 
  resources :sessions

end
