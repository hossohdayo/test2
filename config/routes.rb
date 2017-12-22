Rails.application.routes.draw do
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'searches', to: 'searches#searches'
  post 'searches', to: 'searches#searches'

end
