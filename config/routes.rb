Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end

  post 'join' => 'chatrooms#create'

  root to: "chatrooms#index"
end

#singular because it's just for yourself, our connection to a chatroom by itself
# #action create et delete de chatroom_users
