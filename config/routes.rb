Rails.application.routes.draw do
  devise_for :users
  get 'page_controller/home'

  get 'page_controller/rooms'

  get 'page_controller/services'

  get 'page_controller/activities'

  get 'page_controller/about'

  # get 'page_controller/contact_us'

  # get 'page_controller/book'

  root to: "page_controller#home"
  get 'home', :to => 'page_controller#home', as: 'home'
  get 'rooms', :to => 'page_controller#rooms', as: 'rooms'
  get 'services', :to => 'page_controller#services', as: 'services'
  get 'activities', :to => 'page_controller#activities', as: 'activities'
  get 'about', :to => 'page_controller#about' , as: 'about'

  match '/contact',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  match '/book',     to: 'books#new',             via: 'get'
  resources "books", only: [:new, :create]

  # match '/promotions',     to: 'promotions#index',             via: 'get'
  # resources "promotions"
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
