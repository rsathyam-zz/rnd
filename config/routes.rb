Rnd::Application.routes.draw do
  match '/'                   => 'home#index'
  match '/list_memberships'   => 'list_memberships#create'

  # Static pages
  match '/about'              => 'statics#about'
end
