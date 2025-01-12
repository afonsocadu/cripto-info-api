Rails.application.routes.draw do
  # devise_for :users, path: 'auth'
  mount_devise_token_auth_for 'User', at: 'auth'

end
