Rails.application.routes.draw do

  root "users#new"
  resources :users, :except => [:index]
  resources :secrets, :except => [:show, :edit, :update]
  resources :likes, :only => [:create, :destroy]
  resource :sessions, :only => [:new, :create, :destroy]
    
  # get 'likes/create'

  # get 'likes/destroy'

  # get 'secrets/index'

  # root "users#new"

  # get 'users' => 'users#index'

  # get 'users/new' => 'users#new'

  # post 'likes/:id' => 'likes#create'

  # post 'users' => 'users#create'

  # post 'secrets' => 'secrets#create'

  # get 'sessions/new' => 'sessions#new'

  # post 'sessions' => 'sessions#create'
  
  # get 'users/:id' => 'users#show'

  # get 'users/:id/edit' => 'users#edit'

  # patch 'users/:id' => 'users#update'

  # delete 'sessions' => 'sessions#destroy'

  # delete 'users/:id' => 'users#destroy'

  # delete 'secrets/:id' => 'secrets#destroy'

  # get 'secrets' => 'secrets#index'
 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
