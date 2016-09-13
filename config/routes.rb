Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms do
    resource :chatroom_users #singular because it's just for yourself, our connection to a chatroom by itself
                                #action create et delete de chatroom_users
    resources :messages
  end


  root to: 'chatrooms#index'
end
