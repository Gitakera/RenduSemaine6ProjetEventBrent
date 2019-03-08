Rails.application.routes.draw do
  
  get 'admin/event_c'
  get 'admin/show/:id', to: "admin#event_r"
  get 'admin/validate/:id', to: "admin#event_u"
  get '/admin/delete_event/:id', to: "admin#event_d"
  get 'admin/user_c'
  get 'admin/user_r'
  get 'admin/user_u'
  get 'admin/user_d'
  get 'admin/dashboard', to: "admin#index"
  get 'avatars/create'
  get 'events/create'
  resources :charges
  get 'home/index'
  get 'home/secret'
  get 'supev/:id', to: "events#delete"
  
  resources :events
  resources :utilisateur
  resources :inscription
  resources :avatars, only: [:create]
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
