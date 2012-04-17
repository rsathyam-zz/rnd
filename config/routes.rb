Rnd::Application.routes.draw do
  match '/'                   => 'home#index'

  match '/list_memberships'   => 'list_memberships#create'

  # Static pages
  match '/subscribe'          => 'statics#subscribe'
  match '/about'              => 'statics#about'
  match '/terms'              => 'statics#terms'

  scope 'engineers_onstage' do
    match '/'                 => 'engineers_onstage#index'
    match '/itunes'           => 'engineers_onstage#itunes_index'
    match '/:id'              => 'engineers_onstage#show'
  end
end
