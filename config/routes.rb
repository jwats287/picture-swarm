Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    resources :pictures
    resources :users
    resources :picture_tags
  end
  # api_pictures_search_path returns /api/pictures#search
end