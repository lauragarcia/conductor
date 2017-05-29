Conductor::Engine.routes.draw do
  resource :database
  resources :scaffolds, :resources, :models, :app_controllers, :mailers, only: [:new, :create]

  resources :migrations, only: :index do
    member do
      put :up
      put :down
    end
  end

  #Routes for Codes
  resources :codes, except: [:edit, :update ,:show]
  get 'codes/edit/*path', to: 'codes#edit', constraints: { path: /.*/ }, :as => 'edit_code', defaults: {format: 'html'}
  patch 'codes/*path', to: 'codes#update', constraints: { path: /.*/ }, :as => 'update_code'
  get 'codes/*path', to: 'codes#index', constraints: { path: /.*/ }

  get '/routes' => 'routes#index', as:'routes'
  get '/annotations' => 'annotations#index', as:'annotations'
  get '/statistics' => 'statistics#index', as:'statistics'
  root 'welcome#index'

end
