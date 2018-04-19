Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  post 'runner/create' => 'runner#create'
  post 'runner/increase_attribute' => 'runner#increase_attribute'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
