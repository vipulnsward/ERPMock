MyMock::Application.routes.draw do


  resources :requisitions

  resources :i_stocks

  resources :cr_accounts

  resources :s_orders

  resources :customers

  resources :sundry_grns

  get "sup_account/grn_pay"

  get "sup_account/grn_pending"

  get "sup_account/sundry_pay"

  get "sup_account/so_pay"  
 
  resources :tr_accounts

  resources :capital_accounts

  resources :capital_types

  resources :grn_pos
  
  resources :inwards

  resources :p_orders

  resources :suppliers

  resources :line_items do
    collection do
      get 'search'
    end
  end


  resources :iclasses

  resources :items

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]  

  match "/signup" , :to => "users#new"	
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  get "pages/home"

  get "pages/contact"

  get "pages/about"

  get "pages/help"

  get "pages/create_grn_pdf"

  get "pages/grn"
 
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
