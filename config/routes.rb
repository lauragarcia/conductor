Conductor::Engine.routes.draw do
  get '/routes' => 'routes#index', as:'routes'
  root 'welcome#index'

end
