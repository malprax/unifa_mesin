Unifa::Application.routes.draw do
  get "infos/index"

  get "infos/new"

  get "infos/edit"

  get "infos/show"

  get "artikels/index"

  get "artikels/new"

  get "artikels/edit"

  get "artikels/show"

  get "artikels/update"

  get "artikels/destroy"

  get "beritas/index"

  get "beritas/new"

  get "beritas/edit"

  get "beritas/show"

  get "beritas/update"

  get "beritas/destroy"

  resources :matakuliahs
   
  
  resources :krs_onlines
  match '/krsonline' => 'krs_onlines#index'
  
  match '/penelitiandankeahlian' => 'pages#show', :defaults => { :id => '5' }
  match '/panduansertifikasi' => 'pages#show', :defaults => { :id => '11' }
  match '/indexhalaman' => 'pages#index'
  
  
  
  devise_for :views
  devise_for :users,  :path => '',:path_names => { :sign_up => "daftar", :sign_in => "login"  }
  
  

  get "home/index"

  resources :pages 
  root :to => 'home#index'
  #get ':id', to: 'pages#show', as: :page

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
   

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
