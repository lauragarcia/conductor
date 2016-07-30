Conductor::Engine.routes.draw do
  get '/routes' => 'routes#index', as:'routes'
  get '/annotations' => 'annotations#index', as:'annotations'
  get '/statistics' => 'statistics#index', as:'statistics'
  root 'welcome#index'

end
