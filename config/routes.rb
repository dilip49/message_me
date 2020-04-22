Rails.application.routes.draw do
  get 'sessions/new'
  root 'chatroom#index'
  get 'login', to: 'sessions#new', as: :login
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
end
