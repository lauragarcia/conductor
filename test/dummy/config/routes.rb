Rails.application.routes.draw do
  resources :posts
  mount Conductor::Engine => "/conductor"
end
