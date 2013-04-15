Assignment2::Application.routes.draw do
  
  get "author_sessions/new"

  get "author_sessions/create"

  devise_for :admins

  devise_for :models

 root :to => 'welcome#index'

 resources :diaries


 get 'welcome/index'

 get 'welcome/about'

 get 'welcome/club_holiday'

 get 'welcome/faq'

 get 'welcome/clubsessions'

 get 'welcome/racingteam'

 get 'welcome/accesskeyinfo'

 get 'newevents/clubevents'

 
resources :newevents

resources :authors

resources :author_sessions, 
only: [ :new, :create, :destroy ]

match 'login'  => 'author_sessions#new'
match 'logout' => 'author_sessions#destroy'

end
