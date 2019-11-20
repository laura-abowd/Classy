Rails.application.routes.draw do

  devise_for :teachers
  root to: 'pages#home'
  get '/sorttest', to: 'pages#sorttest'
  get '/students', to: 'students#index'
  get '/classrooms', to: 'classrooms#index'

  resources :teacher_locks, only: :create
  resources :do_not_places, only: :create

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end


