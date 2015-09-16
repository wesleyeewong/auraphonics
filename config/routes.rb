Rails.application.routes.draw do

  #resources :widgets

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root 'welcome#index'

  get '/artist' => 'artist#artist'

  get '/music' => 'music#show'
  
  get '/mixes' => 'mixes#show'

  get '/submit' => 'submit#new'
  post '/submit/create' => 'submit#create'
  get '/submit/:id' => 'submit#show'

  get '/contact' => 'contact#show'
  post '/sent' => 'contact#sent'

  get '/donate' => 'donate#show'

  get '/signup' => 'users#new'
  post '/user/create' => 'users#create'
  get '/user/:id' => 'users#show'

  get '/login' => 'sessions#login'
  post '/login_attempt' => 'sessions#login_attempt'
  get '/setting' => 'sessions#setting'
  get '/pending_details/:id' => 'sessions#pending'
  get '/approved_details/:id' => 'sessions#approved'
  get '/denied_details/:id' => 'sessions#denied'
  get '/completed_details/:id' => 'sessions#completed'
  post '/update' => 'sessions#update'

  get '/home' => 'welcome#index'



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
