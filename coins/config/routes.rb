Rails.application.routes.draw do

  devise_for :users

  resources :users

  # resources :users do
  #   resources :blogs do
  #     resources :posts
  #   end
  # end

  resources :blogs do
    resources :posts
  end

  root to: 'blogs#index'

end
