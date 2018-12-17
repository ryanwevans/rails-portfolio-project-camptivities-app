Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  resources :camp_counselors do
    resources :assignments, only: [:show, :index]
  end

  resources :activities do
    resources :assignments
  end

  resources :assignments

  get '/auth/facebook/callback' => 'sessions#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/delete' => 'camp_counselors#destroy'

end
