PraticoFresco::Application.routes.draw do
  
  # Routes for Homepage

  get("/home", { :controller => "pages", :action => "pag_inicial"})




  # Routes for the Purchase resource:
  # CREATE
  get '/purchases/new', controller: 'purchases', action: 'new', :as => 'new_purchase'
  post '/purchases', controller: 'purchases', action: 'create'

  # READ
  get '/purchases', controller: 'purchases', action: 'index'
  get '/purchases/:id', controller: 'purchases', action: 'show', :as => 'purchase'

  # UPDATE
  get '/purchases/:id/edit', controller: 'purchases', action: 'edit', :as => 'edit_purchase'
  patch '/purchases/:id', controller: 'purchases', action: 'update'

  # DELETE
  delete '/purchases/:id', controller: 'purchases', action: 'destroy'
  #------------------------------

  # Routes for the Order resource:
  # CREATE
  get '/orders/new', controller: 'orders', action: 'new', :as => 'new_order'
  post '/orders', controller: 'orders', action: 'create'

  # READ
  get '/orders', controller: 'orders', action: 'index'
  get '/orders/:id', controller: 'orders', action: 'show', :as => 'order'

  # UPDATE
  get '/orders/:id/edit', controller: 'orders', action: 'edit', :as => 'edit_order'
  patch '/orders/:id', controller: 'orders', action: 'update'

  # DELETE
  delete '/orders/:id', controller: 'orders', action: 'destroy'
  #------------------------------

  # Routes for the Item resource:
  # CREATE
  get '/items/new', controller: 'items', action: 'new', :as => 'new_item'
  post '/items', controller: 'items', action: 'create'

  # READ
  get '/items', controller: 'items', action: 'index'
  get '/items/:id', controller: 'items', action: 'show', :as => 'item'

  # UPDATE
  get '/items/:id/edit', controller: 'items', action: 'edit', :as => 'edit_item'
  patch '/items/:id', controller: 'items', action: 'update'

  # DELETE
  delete '/items/:id', controller: 'items', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', :as => 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', :as => 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', :as => 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

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
