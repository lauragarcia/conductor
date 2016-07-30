Conductor::Engine.routes.draw do
  get '/routes' => 'routes#index', as:'routes'
  get '/annotations' => 'annotations#index', as:'annotations'
  root 'welcome#index'

end
