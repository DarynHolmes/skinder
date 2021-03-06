Rails.application.routes.draw do
  root    'static#home'

  post    'events/create' => 'events#create', as: :create_event
  get     'events'=> 'events#index', as: :events
  post    'events/join' => 'events#join', as: :join_event
  get     'events/:event_code'  => 'events#show', as: :event
  get     'events/:event_code/display'  => 'events#display', as: :display_event
  post    'events/:event_code/messages' => 'messages#create', as: :event_messages
  get     'events/:event_code/messages' => 'messages#index'
  get     'events/:event_code/messages/:id' => 'messages#show', as: :event_message

  get     'login'   => 'sessions#new'
  post    'login'   => 'sessions#create'
  delete  'logout'  => 'sessions#destroy'

  # post  'messages' => 'messages#create'
  # get   'commentary' => 'static#commentary'
  # get   'dashboard' => 'dashboard#index'
  
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
