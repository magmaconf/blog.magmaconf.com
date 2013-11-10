BlogMagmaconfCom::Application.routes.draw do
  devise_scope :user do
    get 'google_apps_sign_in',
        to: "crowdint_auth/omniauth_callbacks#google_apps_sign_in"
  end

  devise_for :users, controllers: { omniauth_callbacks: 'crowdint_auth/omniauth_callbacks' }

  get '/:year/:month/:day/:id(.:format)', to: 'posts#show', as: 'post',
      constraints: { year: /\d+/ }

  root to: 'posts#index'

  mount Crowdblog::Engine => '/'
end
