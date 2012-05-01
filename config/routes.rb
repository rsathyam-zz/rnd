Rnd::Application.routes.draw do
  match '/'                   => 'home#index'

  match '/list_memberships'   => 'list_memberships#create'

  # Static pages
  match '/subscribe'          => 'statics#subscribe'
  match '/about'              => 'statics#about'
  match '/terms'              => 'statics#terms'

  # Podcast feeds
  scope '/podcast_feeds' do
    match '/engineers_onstage'  => 'podcast_feeds#engineers_onstage'
  end

  resources :engineers_onstage
end
