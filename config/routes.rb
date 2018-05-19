Rails.application.routes.draw do

  namespace :admin do
    resources :videos
    resources :pages
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  localized do
    # resources :videos, :path => :videos, only: [:index, :show], :param => :slug
    # get 'other_videos', to: 'videos#other_videos', as: :other_videos
    get 'videos/:category', to: 'videos#index', as: :videos
    get 'videos/:category/:slug', to: 'videos#show', as: :video
    # resources :own, :path => :own, only: [:index, :show], :param => :slug
    # resources :other, :path => :other, only: [:index, :show], :param => :slug
    # resources :videos, :path => :videos, only: [:index, :show], :param => :slug
    # get 'other_videos', to: 'videos#other_videos', as: :other_videos
  end

  # TODO: If using this code for another project, these routes should just use localized.
  scope '(:locale)', locale: /#{Fae.languages.keys.join('|')}/ do
    get '/', to: 'home#show', as: :root
    get '/:slug', to: 'pages#show', as: :page
  end

end
