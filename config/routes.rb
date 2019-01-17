Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  resources :camps do
    resources :activities
  end

  resources :activities do
    resources :assignments
    resources :comments, shallow: true
  end

  resources :assignments

  resources :camp_counselors do
    resources :assignments, only: [:show, :index]
    resources :comments, shallow: true
  end


  get '/auth/facebook/callback' => 'sessions#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
