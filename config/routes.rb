ActionController::Routing::Routes.draw do |map|
  map.resources :courtesy_listings
  map.resources :admin_courtesy_listings, :as => 'admin/courtesy_listings'
end
