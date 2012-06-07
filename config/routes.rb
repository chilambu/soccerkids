Soccerk::Application.routes.draw do

root :to => 'home#homepage'
devise_for :users, :controllers => {:registrations => "registrations"}
resources :events 
resources :transaction
resources :parents

resources :programs
	match 'pro'=> 'programs#new'
	match 'pro_list'=> 'programs#list'
	match 'programs/search'=> 'programs#search'


 
resources :program_list
	match 'home/editparent1'=> 'home#editparent1'
	match 'home/editparent'=> 'home#editparent'
	match 'home/showp'=> 'home#showp'
	match 'home/thanks'=> 'home#thanks'
	match 'home/sorry'=> 'home#sorry'
	match 'home/alreadypaid'=> 'home#alreadypaid'
	match 'home/redirect'=> 'home#redirect_page'
	match 'home/AboutSoccerKids'=> 'home#aboutSoccerKids'
	match 'home/help'=> 'home#help'
	match 'home/soccerkidsonlinestore'=> 'home#soccerkidsonlinestore'
	match 'home/programs'=> 'home#programs'

resources :players
	match 'players/addplayer'=> 'players#addplayer'
	match 'players'=>'players#new'

        match 'events/full/:id/:player_id'=> 'events#full'
	match 'transaction/new/:id/:player_id'=> 'transaction#new'

        match 'program_list/create'=> "program_list#create", :as => "programlists"

	match 'use/pd'=>'use#pd'
        match 'use/notifi' =>'use#notifi'  
        match 'use/notifi1' =>'use#notifi1'
        match 'use/enlarge' =>'use#enlarge'

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
  # 
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
