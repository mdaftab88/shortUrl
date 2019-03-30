Rails.application.routes.draw do
  root 'short_url_gs#index'
  get 'decode/:short_url' => 'short_url_gs#decode'
  resources :short_url_gs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
