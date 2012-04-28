Rnd::Application.routes.draw do
  match '/'                   => 'home#index'

  match '/list_memberships'   => 'list_memberships#create'

  # Static pages
  match '/subscribe'          => 'statics#subscribe'
  match '/about'              => 'statics#about'
  match '/terms'              => 'statics#terms'

  resources :engineers_onstage
end
