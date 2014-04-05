WhereToGo::Application.routes.draw do
 match('/cities', :via => :get, :to => 'cities#index')
 match('/cities', :via => :post, :to => 'cities#create')
 match('/cities/:slug', :via => :get, :to => 'cities#show')
 match('/cities/:slug/edit', :via => :get, :to => 'cities#edit')
 match('/cities/:slug', :via => [:patch, :put], :to => 'cities#update')
 match('/cities/:slug', :via => :delete, :to => 'cities#destroy')

 #categories routes
 match('/categories/:slug', :via => :get, :to => 'categories#show')

 #ratings routes
 match('/cities/:city_slug/categories/:cat_slug/ratings')


end
