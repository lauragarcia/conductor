Conductor::Engine.routes.draw do
  resource :database

  resources :migrations, only: :index do
    member do
      put :up
      put :down
    end
  end
  get '/routes' => 'routes#index', as:'routes'
  get '/annotations' => 'annotations#index', as:'annotations'
  get '/statistics' => 'statistics#index', as:'statistics'
  root 'welcome#index'

end
