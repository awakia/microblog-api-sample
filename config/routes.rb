Rails.application.routes.draw do
  resources :micro_blogs
  resources :followings
  resources :users do
    resources :micro_blogs
    member do
      get :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
