BlogMagmaconfCom::Application.routes.draw do
  devise_scope :user do
    get 'google_apps_sign_in',
        to: "crowdint_auth/omniauth_callbacks#google_apps_sign_in"
  end

  devise_for :users, controllers: { omniauth_callbacks: 'crowdint_auth/omniauth_callbacks' }

  get '/:year/:month/:day/:id(.:format)', to: 'posts#show', as: 'post',
      constraints: { year: /\d+/ }

  get 'preview/:id', to: 'previews#show', as: 'preview'

  root to: 'posts#index'

  mount Crowdblog::Engine => '/'

  match '(/category/:category)(/page/:page)', to: 'posts#index', via: 'get'

  match '/sections/venue', to: 'sections#venue', via: 'get'
  match '/sections/sponsors', to: 'sections#sponsors', via: 'get'
  match '/sections/links', to: 'sections#links', via: 'get'
end
